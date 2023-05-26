using System.Collections;
using System.Collections.Generic;
using UnityEngine;


/// <summary>
/// Este script actua como los ojos del zombie, detecta al jugador y lo sigue. Cuenta con la mecánica de "seguir con la mirada" al jugador,
/// que pretende emular el fenómeno de que cuando ves algo que te llama la atención, lo sigues con la mirada aunque se aleje de tu campo de visión.
/// </summary>
public class ZombieVision : MonoBehaviour
{
    // Referencia al script ZombieAI
    private ZombieAI zombieAI;
    // Temporizador para que el zombie deje de seguir al jugador
    private float attentionTimer = 0f;

    /// <summary>
    /// Capas en las que el zombie puede ver
    /// </summary>
    [SerializeField] private LayerMask detectTheseLayers;
    // Rango de atención del zombie actual
    private float focusVision = 0f;


    // Start is called before the first frame update
    void Start()
    {
        // Obtener la referencia al script ZombieAI
        zombieAI = GetComponentInParent<ZombieAI>();

        // Establecer el rango de vision del zombie
        gameObject.GetComponent<SphereCollider>().radius = zombieAI.detectionRange;
        // Establecer el rango de atención del zombie
        focusVision = zombieAI.detectionRange;
    }

    // Update is called once per frame
    void Update()
    {
        // Si el zombie no ve al jugador, aumentar el temporizador
        if (!zombieAI.seeingPlayer) 
            attentionTimer += Time.deltaTime;
        // Si el temporizador supera el tiempo de atencion del zombie, dejar de seguir al jugador
        if (attentionTimer >= zombieAI.attentionSpan)
        {
            //Cambiar el estado del zombie
            zombieAI.followingPlayer = false;
            zombieAI.roaming = true;
            // Reiniciar el temporizador
            attentionTimer = 0f;

        }


    }

    private void OnTriggerStay(Collider other)
    {
        // Obtenemos la direccion del raycast
        Vector3 raycastDirection = (other.transform.position + Vector3.up - transform.position).normalized;

        // Lanzamos el raycast
        RaycastHit hit;
        if (Physics.Raycast(transform.position, raycastDirection, out hit, focusVision, detectTheseLayers))
        {
            // Cálculo del ángulo entre el zombie y el objeto golpeado
            Vector3 hitDirection = hit.point - transform.position;
            float angle = Vector3.Angle(transform.forward, hitDirection);

            // Si el objeto golpeado está dentro del ángulo de visión del zombie
            if (angle <= zombieAI.detectionAngle || angle >= 360-zombieAI.detectionAngle)
            {
                Debug.Log("Raycast Hit: " + hit.collider.gameObject.name);

                // Si el objeto golpeado es el jugador, seguirlo
                if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Player"))
                {
                    //Cambiar el estado del zombie
                    zombieAI.seeingPlayer = true;
                    zombieAI.followingPlayer = true;
                    zombieAI.roaming = false;
                    // Establecer el objetivo del zombie
                    zombieAI.target = hit.collider.gameObject.transform.position;
                    // Reiniciar el temporizador
                    attentionTimer = 0f;
                    // Se aumenta el radio de atencion del zombie
                    focusVision = zombieAI.detectionRange * 2;
                }
                // Si no es el jugador
                else
                {
                    //Cambiar el estado del zombie
                    zombieAI.seeingPlayer = false;
                    // Se reduce el radio de atencion del zombie
                    focusVision = zombieAI.detectionRange;
                }
            }
        }

        Debug.DrawRay(transform.position, raycastDirection * focusVision, Color.red);
    }
}

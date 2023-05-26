using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Este script actua como los oidos del zombie, detectando sonidos y avisando al zombie de que se dirija hacia ellos.
/// </summary>
public class ZombieHearing : MonoBehaviour
{
    // La IA del zombie al que transmite la información
    private ZombieAI zombieAI;

    // Timer para que el zombie deje de prestar atención a un sonido
    private float attentionTimer = 0f;



    // Start is called before the first frame update
    void Start()
    {
        // Se busca la IA del zombie
        zombieAI = GetComponentInParent<ZombieAI>();

        // Se cambia el radio del collider para que sea el rango de audición del zombie
        gameObject.GetComponent<SphereCollider>().radius = zombieAI.soundRange;
    }

    // Update is called once per frame
    void Update()
    {
        // Si el zombie está escuchando un sonido, se empieza a contar el tiempo que lleva escuchándolo
        attentionTimer += Time.deltaTime;

        // Si el zombie lleva escuchando el sonido más tiempo del que puede prestar atención, deja de escucharlo
        if (attentionTimer >= zombieAI.attentionSpan)
        {
            // Se cambia el estado del zombie
            zombieAI.hearingSound = false;
            zombieAI.roaming = true;

            // Se resetea el timer
            attentionTimer = 0f;
                
        }
    }

    private void OnTriggerStay(Collider other)
    {
        // Si el zombie escucha un sonido, se le avisa de que se dirija hacia él
        if (other.gameObject.layer == LayerMask.NameToLayer("Sounds") && !zombieAI.seeingPlayer)
        {
            //Se cambia el estado del zombie
            zombieAI.hearingSound = true;
            // Se resetea el timer
            attentionTimer = 0f;
            // Se le indica al zombie que se dirija hacia el sonido
            zombieAI.target = other.transform.position;
        }
    }
}

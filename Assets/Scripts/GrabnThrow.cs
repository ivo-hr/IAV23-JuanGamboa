using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

/// <summary>
/// �ste script habilita al jugador a agarrar y lanzar objetos. Se setea el punto de agarre y la fuerza de lanzamiento, adem�s del rango de alcance.
/// Supone que est� a�adido a la c�mara del jugador, y que la c�mara gira con el jugador. (Ideal para primera persona y over-the-shoulder).
/// Los objetos agarrables han de estar en la capa "Throwable".
/// </summary>
public class GrabnThrow : MonoBehaviour
{
    /// <summary>
    /// El punto al que se agarra el objeto
    /// </summary>
    [SerializeField] private Transform ligamentPoint;
    /// <summary>
    /// La fuerza con la que se lanza el objeto
    /// </summary>
    [SerializeField] private float throwForce = 10;
    /// <summary>
    /// Si el objeto est� en rango o no
    /// </summary>
    [SerializeField] private bool inRange = false;
    /// <summary>
    /// El rango de alcance del jugador
    /// </summary>
    [SerializeField] private float range = 10;
    /// <summary>
    /// El objeto agarrado.
    /// </summary>
    [SerializeField] private GameObject grabbedObject;


    // Update is called once per frame
    void Update()
    {
        // Si el jugador pulsa el bot�n izquierdo del rat�n y no tiene ning�n objeto agarrado, intenta agarrar un objeto.
        if (Input.GetMouseButtonDown(0) && grabbedObject == null)
        {
            Grab();
            // Si el objeto est� en rango, lo agarramos.
            if (inRange)
            {
                // El objeto agarrado pasa a ser hijo del punto de agarre y se desactiva su gravedad.
                grabbedObject.GetComponent<Rigidbody>().isKinematic = true;
                grabbedObject.transform.SetParent(ligamentPoint);

                // El objeto agarrado no puede ser detectado por el raycast para evitar problemas externos.
                grabbedObject.layer = LayerMask.NameToLayer("Ignore Raycast");
            }
        }

        // Si el jugador pulsa el bot�n derecho del rat�n y tiene un objeto agarrado, lo lanza.
        else if (Input.GetMouseButtonDown(1) && grabbedObject != null)
        {
            // El objeto agarrado pasa a la layer por defecto para que cumpla funcionalidades de da�o (Ver ItemDamage e Itemsoundsim).
            grabbedObject.layer = LayerMask.NameToLayer("Default");

            // El objeto agarrado vuelve a tener gravedad y se lanza.
            grabbedObject.GetComponent<Rigidbody>().isKinematic = false;
            Throw();

            // El objeto agarrado deja de ser hijo del punto de agarre.
            grabbedObject.transform.SetParent(null);

            // El objeto agarrado deja de ser el objeto agarrado.
            grabbedObject = null;
        }

        // Si el jugador tiene un objeto agarrado, �ste se mueve al punto de agarre.
        if (grabbedObject != null)
            grabbedObject.transform.position = ligamentPoint.position;

    }

    /// <summary>
    /// M�todo que comprueba si hay un objeto en rango.
    /// </summary>
    void Grab()
    {
        // Se lanza un raycast desde la c�mara del jugador hacia delante.
        RaycastHit hit;
        if (Physics.Raycast(gameObject.transform.position, gameObject.transform.forward, out hit, range))
        {
            // Si el objeto que se ha detectado est� en la capa "Throwable", se considera que est� en rango.
            if (hit.collider.gameObject.layer != LayerMask.NameToLayer("Throwable"))
            {
                inRange = true;
                grabbedObject = hit.collider.gameObject;
                Debug.Log("I hit " + grabbedObject.name);
            }
            // Si no, no est� en rango (No es agarrable).
            else
                inRange = false;
        }

        // Si no se detecta nada, no est� en rango.
        else
            inRange = false;

        Debug.DrawRay(gameObject.transform.position, gameObject.transform.forward * range, Color.green);
    }

    /// <summary>
    /// M�todo que lanza el objeto agarrado.
    /// </summary>
    void Throw()
    {
        // El objeto deja de estar en rango.
        inRange = false;
        // Se obtiene la direcci�n en la que se est� mirando y se lanza el objeto en esa direcci�n.
        Vector3 throwDir = gameObject.transform.forward;
        grabbedObject.GetComponent<Rigidbody>().AddForce(throwDir * throwForce, ForceMode.Impulse);
        // Se activa el sonido de lanzamiento del objeto (ver Itemsoundsim).
        grabbedObject.GetComponent<ItemsoundSim>().thrown = true;

        Debug.Log("I threw " + grabbedObject.name);
    }
}

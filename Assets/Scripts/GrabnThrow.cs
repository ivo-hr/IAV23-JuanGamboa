using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class GrabnThrow : MonoBehaviour
{

    [SerializeField] private Transform ligamentPoint;
    [SerializeField] private float throwForce = 10;
    [SerializeField] private bool inRange = false;
    [SerializeField] private float range = 10;
    [SerializeField] private GameObject grabbedObject;
    // Start is called before the first frame update
    void Start()
    {

        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0) && grabbedObject == null)
        {
            Grab();
            if (inRange)
            {
                grabbedObject.GetComponent<Rigidbody>().isKinematic = true;
                grabbedObject.transform.SetParent(ligamentPoint);
                grabbedObject.layer = LayerMask.NameToLayer("Ignore Raycast");
            }
        }

        else if (Input.GetMouseButtonDown(1) && grabbedObject != null)
        {
            grabbedObject.layer = LayerMask.NameToLayer("Default");

            grabbedObject.GetComponent<Rigidbody>().isKinematic = false;

            Throw();

            grabbedObject.transform.SetParent(null);

            grabbedObject = null;
        }

        if (grabbedObject != null)
        {
            grabbedObject.transform.position = ligamentPoint.position;
        }
    }

    void Grab()
    {
        RaycastHit hit;
        if (Physics.Raycast(gameObject.transform.position, gameObject.transform.forward, out hit, range))
        {
            if (hit.collider.gameObject.GetComponent<Throwable>() != null)
            {
                inRange = true;
                grabbedObject = hit.collider.gameObject;
                Debug.Log("I hit " + grabbedObject.name);
            }
            else
            {
                inRange = false;
            }
        }
        else
        {
            inRange = false;
        }

        Debug.DrawRay(gameObject.transform.position, gameObject.transform.forward * range, Color.green);
    }

    void Throw()
    {
        inRange = false;
        Vector3 throwDir = gameObject.transform.forward;
        //grabbedObject.transform.position = ligamentPoint.transform.right;
        grabbedObject.GetComponent<Rigidbody>().AddForce(throwDir * throwForce, ForceMode.Impulse);
        grabbedObject.GetComponent<ItemsoundSim>().thrown = true;

        Debug.Log("I threw " + grabbedObject.name);
    }
}

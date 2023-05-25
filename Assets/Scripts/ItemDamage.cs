using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Valve.VR.InteractionSystem;

public class ItemDamage : MonoBehaviour
{
    [SerializeField] private float knockback = 10;
    // Start is called before the first frame update

    
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<ZombieDeath>() != null && gameObject.GetComponent<ItemsoundSim>().thrown)
        {
            collision.gameObject.GetComponent<Rigidbody>().AddForce((collision.transform.position - transform.position).normalized * knockback +
                gameObject.GetComponent<Rigidbody>().velocity, ForceMode.Impulse);
            collision.gameObject.GetComponent<Transform>().rotation = Quaternion.LookRotation(collision.transform.position - transform.position);
            collision.gameObject.GetComponent<ZombieDeath>().Die();
        }
    }

}

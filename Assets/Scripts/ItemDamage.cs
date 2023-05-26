using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using Valve.VR.InteractionSystem;


/// <summary>
/// Este script se encarga de hacer daño a los zombies cuando se les lanza un objeto. También se encarga de hacer knockback.
/// </summary>
public class ItemDamage : MonoBehaviour
{
    /// <summary>
    /// La fuerza con la que se hace knockback
    /// </summary>
    [SerializeField] private float knockback = 10;

    private void OnCollisionEnter(Collision collision)
    {
        // Si el objeto colisiona con un zombie y ha sido lanzado, se le hace daño y knockback.
        if (collision.gameObject.GetComponent<ZombieDeath>() != null && gameObject.GetComponent<ItemsoundSim>().thrown)
        {
            // Knockback y rotación al chocar con el zombie.
            collision.gameObject.GetComponent<Rigidbody>().AddForce((collision.transform.position - transform.position).normalized * knockback +
                gameObject.GetComponent<Rigidbody>().velocity, ForceMode.Impulse);
            collision.gameObject.GetComponent<Transform>().rotation = Quaternion.LookRotation(collision.transform.position - transform.position);

            // Daño al zombie.
            collision.gameObject.GetComponent<ZombieDeath>().Die();

            //Suena el sonido al chocar
            gameObject.GetComponent<AudioSource>().Play();
        }
    }

}

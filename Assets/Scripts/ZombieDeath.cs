using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.AI;
using Valve.VR.InteractionSystem;


/// <summary>
/// Este script se encarga de matar a los zombies cuando se les lanza un objeto.
/// Va a permitir que el zombie salga volando y que se haga más pequeño hasta desaparecer, y luego avisará al spawner de zombies 
/// para que se actualice el número de zombies vivos y se pongan zombies a la espera de spawnear.
/// </summary>
public class ZombieDeath : MonoBehaviour
{
    /// <summary>
    /// Tiempo que tarda el zombie en desaparecer.
    /// </summary>
    [SerializeField] private float timeDead = 10;
    // Timer para que el zombie desaparezca
    private float timeDeadCounter = 0;
    // Booleano para saber si el zombie está muerto
    private bool isDead = false;
    // Referencia al spawner de zombies
    private ZombieSpawner zombieSpawner;
    // Start is called before the first frame update


    void Start()
    {
        // Se busca el spawner de zombies
        zombieSpawner = FindAnyObjectByType<ZombieSpawner>();
    }

    // Update is called once per frame
    void Update()
    {
        // Si el zombie está muerto
        if (isDead)
        {
            // Se empieza a contar el tiempo que tarda en desaparecer
            timeDeadCounter += Time.deltaTime;
            // Si se ha llegado al tiempo de desaparición, se destruye el zombie
            if (timeDeadCounter >= timeDead)
                Destroy(gameObject);

            // Si se ha llegado a la mitad del tiempo de desaparición, se empieza a hacer más pequeño
            else if (timeDeadCounter >= timeDead / 2 && gameObject.transform.localScale.x > 0)
                gameObject.transform.localScale -= new Vector3(0.015f, 0.015f, 0.015f);
        }
    }

    /// <summary>
    /// Método al que llama el script ItemDamage cuando un objeto golpea a un zombie.
    /// </summary>
    public void Die()
    {
        //Se quitan los constraints del rigidbody, se cambia el layer para que no se "muera" otra vez y se desactivan los scripts que no se necesitan
        gameObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
        gameObject.layer = LayerMask.NameToLayer("Default");
        gameObject.GetComponent<ZombieAI>().enabled = false;
        gameObject.GetComponent<NavMeshAgent>().enabled = false;
        gameObject.GetComponent<Animator>().Play("Z_FallingBack");
        gameObject.GetComponentInChildren<ZombieHearing>().enabled = false;

        // Se llama al método KilledZombie del spawner de zombies, para que se actualice el número de zombies vivos y se pongan zombies a la espera de spawnear
        zombieSpawner.KilledZombie();
        // Se pone el booleano de muerto a true
        isDead = true;
    }
}


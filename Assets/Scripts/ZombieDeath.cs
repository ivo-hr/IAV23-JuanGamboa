using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.AI;
using Valve.VR.InteractionSystem;

public class ZombieDeath : MonoBehaviour
{

    [SerializeField] private float timeDead = 10;
    private float timeDeadCounter = 0;
    private bool isDead = false;
    private ZombieSpawner zombieSpawner;
    // Start is called before the first frame update


    void Start()
    {
        zombieSpawner = FindAnyObjectByType<ZombieSpawner>();

    }

    // Update is called once per frame
    void Update()
    {
        if (isDead)
        {
            timeDeadCounter += Time.deltaTime;
            if (timeDeadCounter >= timeDead)
            {
                Destroy(gameObject);
            }

            else if (timeDeadCounter >= timeDead / 2 && gameObject.transform.localScale.x > 0)
            {
                gameObject.transform.localScale -= new Vector3(0.015f, 0.015f, 0.015f);
            }
        }
    }

    public void Die()
    {
        gameObject.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
        gameObject.layer = LayerMask.NameToLayer("Default");
        gameObject.GetComponent<ZombieAI>().enabled = false;
        gameObject.GetComponent<NavMeshAgent>().enabled = false;
        gameObject.GetComponent<Animator>().Play("Z_FallingBack");
        gameObject.GetComponentInChildren<ZombieHearing>().enabled = false;

        zombieSpawner.KilledZombie();
        isDead = true;

        
    }



}


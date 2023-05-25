using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZombieHearing : MonoBehaviour
{
    private ZombieAI zombieAI;

    private float attentionTimer = 0f;



    // Start is called before the first frame update
    void Start()
    {
        zombieAI = GetComponentInParent<ZombieAI>();

        gameObject.GetComponent<SphereCollider>().radius = zombieAI.soundRange;
    }

    // Update is called once per frame
    void Update()
    {
        attentionTimer += Time.deltaTime;
        if (attentionTimer >= zombieAI.attentionSpan)
        {
            zombieAI.hearingSound = false;
            zombieAI.roaming = true;
            attentionTimer = 0f;
                
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.layer == LayerMask.NameToLayer("Sounds") && !zombieAI.seeingPlayer)
        {
            zombieAI.hearingSound = true;
            attentionTimer = 0f;
            zombieAI.target = other.transform.position;
        }
    }
}

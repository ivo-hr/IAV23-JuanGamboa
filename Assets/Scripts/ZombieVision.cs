using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZombieVision : MonoBehaviour
{
    private ZombieAI zombieAI;

    private float attentionTimer = 0f;

    [SerializeField] private LayerMask detectTheseLayers;

    private float focusVision = 0f;

    // Start is called before the first frame update
    void Start()
    {
        zombieAI = GetComponentInParent<ZombieAI>();

        gameObject.GetComponent<SphereCollider>().radius = zombieAI.detectionRange;
        focusVision = zombieAI.detectionRange;
    }

    // Update is called once per frame
    void Update()
    {
        attentionTimer += Time.deltaTime;
        if (attentionTimer >= zombieAI.attentionSpan)
        {
            zombieAI.followingPlayer = false;
            zombieAI.roaming = true;

        }


    }

    private void OnTriggerStay(Collider other)
    {
        // Get the direction of the raycast based on the transform's forward vector
        Vector3 raycastDirection = (other.transform.position + Vector3.up - transform.position).normalized;

        // Cast the ray and check if it hits any objects within the specified angle range
        RaycastHit hit;
        if (Physics.Raycast(transform.position, raycastDirection, out hit, focusVision, detectTheseLayers))
        {
            // Calculate the angle between the raycast direction and the hit point direction
            Vector3 hitDirection = hit.point - transform.position;
            float angle = Vector3.Angle(transform.forward, hitDirection);

            // Check if the hit object is within the specified angle range
            if (angle <= zombieAI.detectionAngle ||angle >= 360-zombieAI.detectionAngle)
            {
                // Handle the hit object within the specified vision angle
                Debug.Log("Raycast Hit: " + hit.collider.gameObject.name);

                if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Player"))
                {
                    zombieAI.seeingPlayer = true;
                    zombieAI.followingPlayer = true;
                    zombieAI.roaming = false;
                    zombieAI.target = hit.collider.gameObject.transform.position;
                    attentionTimer = 0f;
                    focusVision = zombieAI.detectionRange * 2;
                }
                else if (hit.collider.gameObject.layer == LayerMask.NameToLayer("Throwables") && !zombieAI.seeingPlayer)
                {
                    zombieAI.followingSound = true;
                    zombieAI.roaming = false;
                    zombieAI.followingPlayer = false;
                    zombieAI.target = hit.collider.gameObject.transform.position;
                }

                else
                {
                    zombieAI.seeingPlayer = false;
                    focusVision = zombieAI.detectionRange;
                }
            }
        }

        Debug.DrawRay(transform.position, raycastDirection * focusVision, Color.red);
    }
}

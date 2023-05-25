using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class ZombieAI : MonoBehaviour
{
    [SerializeField] private float roamSpeed = 1f;
    [SerializeField] private float soundSpeed = 3f;
    [SerializeField] private float detectionSpeed = 5f;
    [SerializeField] public float soundRange = 10f;
    [SerializeField] public float attentionSpan = 10f;
    [SerializeField] public float detectionRange = 10f;
    [SerializeField] public float detectionAngle = 10f;
    [SerializeField] public bool seeingPlayer = false;
    [SerializeField] public bool followingPlayer = false;
    [SerializeField] public bool hearingSound = false;
    [SerializeField] public bool roaming = true;

    private NavMeshAgent agent;

    private ParticleSystem senseFX;

    public Vector3 target;

    public bool followingSound = false;
    private Vector3 previousPosition;
    private float curSpeed;

    private float changeTargetTimer = 0f;
    private bool changeTarget = false;

    private Animator anim;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();

        anim = GetComponent<Animator>();

        senseFX = GetComponentInChildren<ParticleSystem>();
    }

    // Update is called once per frame
    void Update()
    {
        SpeedSet();

        AnimationChanger();

        agent.SetDestination(target);

        changeTargetTimer += Time.deltaTime;
        if (changeTargetTimer >= 5f)
        {
            changeTarget = true;
            changeTargetTimer = 0f;
        }
    }


    private void AnimationChanger()
    {
        Vector3 curMove = transform.position - previousPosition;
        curSpeed = curMove.magnitude / Time.deltaTime;
        previousPosition = transform.position;
        anim.SetFloat("Speed", curSpeed);
    }

    private void SpeedSet()
    {
        if (followingPlayer == true)
        {

            agent.speed = detectionSpeed;
            agent.acceleration = 100;
            roaming = false;

            if (seeingPlayer) senseFX.startColor = Color.red;
            else senseFX.startColor = Color.yellow;
            senseFX.emissionRate = 20;


        }

        else if (hearingSound == true)
        {
            agent.speed = soundSpeed;
            agent.acceleration = 20;
            roaming = false;

            senseFX.startColor = Color.cyan;
            senseFX.emissionRate = 15;
        }

        

        else if (roaming == true)
        {
            if (agent.remainingDistance <= 1f || changeTarget || curSpeed < 0.5)
            {
                target = new Vector3(gameObject.transform.position.x + Random.Range(-30, 30), 0, gameObject.transform.position.z + Random.Range(-30, 30));
                changeTarget = false;
            }

            agent.acceleration = 20;
            agent.speed = roamSpeed;

            senseFX.startColor = Color.green;
            senseFX.emissionRate = 10;
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// Este script se encarga de controlar el comportamiento de los zombies. Sirve como controlador de estados para el zombie, y recibiendo
/// la pedida de estados de otros scripts, cambia el comportamiento del zombie. El zombie puede estar en 4 estados: merodeando, curioseando,
/// persiguiendo al jugador o viendo al jugador. Cada estado se activa o desactiva desde los scripts de los sensores, y este script
/// se encarga de cambiar el comportamiento del zombie en consecuencia.
/// También se encarga de cambiar las animaciones del zombie en función de su velocidad.
/// </summary>
public class ZombieAI : MonoBehaviour
{
    /// <summary>
    /// Velocidad de merodeo del zombie
    /// </summary>
    [SerializeField] private float roamSpeed = 1f;
    /// <summary>
    /// Velocidad de curosear del zombie
    /// </summary>
    [SerializeField] private float soundSpeed = 3f;
    /// <summary>
    /// Velocidad de persecución del zombie
    /// </summary>
    [SerializeField] private float detectionSpeed = 5f;
    /// <summary>
    /// Rango de detección de sonido del zombie
    /// </summary>
    [SerializeField] public float soundRange = 10f;
    /// <summary>
    /// Rango de detección de visión del zombie
    /// </summary>
    [SerializeField] public float detectionRange = 10f;
    /// <summary>
    /// Ángulo de visión del zombie
    /// </summary>
    [SerializeField] public float detectionAngle = 10f;
    /// <summary>
    /// Span de atención del zombie
    /// </summary>
    [SerializeField] public float attentionSpan = 10f;
    /// <summary>
    /// Viendo al jugador
    /// </summary>
    [SerializeField] public bool seeingPlayer = false;
    /// <summary>
    /// Siguiendo al jugador
    /// </summary>
    [SerializeField] public bool followingPlayer = false;
    /// <summary>
    /// Escuchando sonido
    /// </summary>
    [SerializeField] public bool hearingSound = false;
    /// <summary>
    /// Merodeando
    /// </summary>
    [SerializeField] public bool roaming = true;

    // NavMeshAgent para el movimiento del zombie
    private NavMeshAgent agent;
    // Partículas de los sentidos del zombie
    private ParticleSystem senseFX;
    // Posición objetivo del zombie
    public Vector3 target;

    /// <summary>
    /// Siguiendo sonido
    /// </summary>
    public bool followingSound = false;
    // Posicón del zombie en el frame anterior
    private Vector3 previousPosition;
    // Velocidad actual del zombie
    private float curSpeed;

    // Timer para cambiar el objetivo del zombie
    private float changeTargetTimer = 0f;
    // Booleano para cambiar el objetivo del zombie
    private bool changeTarget = false;
    // Animator del zombie
    private Animator anim;

    void Start()
    {
        // Asignación del NavMeshAgent
        agent = GetComponent<NavMeshAgent>();
        // Asignación del Animator
        anim = GetComponent<Animator>();
        // Asignación de las partículas
        senseFX = GetComponentInChildren<ParticleSystem>();
    }

    // Update is called once per frame
    void Update()
    {
        // Cambio de parametros en función del estado del zombie
        StateSettings();
        // Cambio de animación en función de la velocidad del zombie
        AnimationChanger();
        // Asignación del objetivo del zombie
        agent.SetDestination(target);

        // Timer para cambiar el objetivo del zombie si está merodeando
        changeTargetTimer += Time.deltaTime;
        if (changeTargetTimer >= 5f)
        {
            changeTarget = true;
            changeTargetTimer = 0f;
        }
    }

    /// <summary>
    /// Método para cambiar la animación del zombie en función de su velocidad. Trabaja con el Animator del zombie.
    /// </summary>
    private void AnimationChanger()
    {
        // Cálculo de la velocidad del zombie
        Vector3 curMove = transform.position - previousPosition;
        curSpeed = curMove.magnitude / Time.deltaTime;
        // Actualización de la posición anterior
        previousPosition = transform.position;

        // Cambio de animación en función de la velocidad
        anim.SetFloat("Speed", curSpeed);
    }

    /// <summary>
    /// Éste método se encarga de cambiar los parámetros del zombie en función del estado del zombie.
    /// </summary>
    private void StateSettings()
    {
        //Si el zombie está viendo o siguiendo al jugador
        if (followingPlayer == true)
        {
            // Cambio de parámetros de velocidad y aceleración
            agent.speed = detectionSpeed;
            agent.acceleration = 100;
            // El zombie no está merodeando
            roaming = false;

            // Cambio de color de las partículas en función de si está viendo o siguiendo al jugador
            if (seeingPlayer) senseFX.startColor = Color.red;
            else senseFX.startColor = Color.yellow;
            senseFX.emissionRate = 20;


        }
        // Si el zombie está escuchando un sonido
        else if (hearingSound == true)
        {
            // Cambio de parámetros de velocidad y aceleración
            agent.speed = soundSpeed;
            agent.acceleration = 20;
            roaming = false;
            // Cambio de color de las partículas
            senseFX.startColor = Color.cyan;
            senseFX.emissionRate = 15;
        }

        // Si el zombie está merodeando
        else if (roaming == true)
        {
            // Cambio de objetivo del zombie si está cerca del objetivo, si se ha cumplido el timer o si la velocidad es muy baja
            if (agent.remainingDistance <= 1f || changeTarget || curSpeed < 0.5)
            {
                target = new Vector3(gameObject.transform.position.x + Random.Range(-30, 30), 0, gameObject.transform.position.z + Random.Range(-30, 30));
                changeTarget = false;
            }
            // Cambio de parámetros de velocidad y aceleración
            agent.acceleration = 20;
            agent.speed = roamSpeed;

            // Cambio de color de las partículas
            senseFX.startColor = Color.green;
            senseFX.emissionRate = 10;
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// Este script se encarga de controlar el comportamiento de los zombies. Sirve como controlador de estados para el zombie, y recibiendo
/// la pedida de estados de otros scripts, cambia el comportamiento del zombie. El zombie puede estar en 4 estados: merodeando, curioseando,
/// persiguiendo al jugador o viendo al jugador. Cada estado se activa o desactiva desde los scripts de los sensores, y este script
/// se encarga de cambiar el comportamiento del zombie en consecuencia.
/// Tambi�n se encarga de cambiar las animaciones del zombie en funci�n de su velocidad.
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
    /// Velocidad de persecuci�n del zombie
    /// </summary>
    [SerializeField] private float detectionSpeed = 5f;
    /// <summary>
    /// Rango de detecci�n de sonido del zombie
    /// </summary>
    [SerializeField] public float soundRange = 10f;
    /// <summary>
    /// Rango de detecci�n de visi�n del zombie
    /// </summary>
    [SerializeField] public float detectionRange = 10f;
    /// <summary>
    /// �ngulo de visi�n del zombie
    /// </summary>
    [SerializeField] public float detectionAngle = 10f;
    /// <summary>
    /// Span de atenci�n del zombie
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
    // Part�culas de los sentidos del zombie
    private ParticleSystem senseFX;
    // Posici�n objetivo del zombie
    public Vector3 target;

    /// <summary>
    /// Siguiendo sonido
    /// </summary>
    public bool followingSound = false;
    // Posic�n del zombie en el frame anterior
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
        // Asignaci�n del NavMeshAgent
        agent = GetComponent<NavMeshAgent>();
        // Asignaci�n del Animator
        anim = GetComponent<Animator>();
        // Asignaci�n de las part�culas
        senseFX = GetComponentInChildren<ParticleSystem>();
    }

    // Update is called once per frame
    void Update()
    {
        // Cambio de parametros en funci�n del estado del zombie
        StateSettings();
        // Cambio de animaci�n en funci�n de la velocidad del zombie
        AnimationChanger();
        // Asignaci�n del objetivo del zombie
        agent.SetDestination(target);

        // Timer para cambiar el objetivo del zombie si est� merodeando
        changeTargetTimer += Time.deltaTime;
        if (changeTargetTimer >= 5f)
        {
            changeTarget = true;
            changeTargetTimer = 0f;
        }
    }

    /// <summary>
    /// M�todo para cambiar la animaci�n del zombie en funci�n de su velocidad. Trabaja con el Animator del zombie.
    /// </summary>
    private void AnimationChanger()
    {
        // C�lculo de la velocidad del zombie
        Vector3 curMove = transform.position - previousPosition;
        curSpeed = curMove.magnitude / Time.deltaTime;
        // Actualizaci�n de la posici�n anterior
        previousPosition = transform.position;

        // Cambio de animaci�n en funci�n de la velocidad
        anim.SetFloat("Speed", curSpeed);
    }

    /// <summary>
    /// �ste m�todo se encarga de cambiar los par�metros del zombie en funci�n del estado del zombie.
    /// </summary>
    private void StateSettings()
    {
        //Si el zombie est� viendo o siguiendo al jugador
        if (followingPlayer == true)
        {
            // Cambio de par�metros de velocidad y aceleraci�n
            agent.speed = detectionSpeed;
            agent.acceleration = 100;
            // El zombie no est� merodeando
            roaming = false;

            // Cambio de color de las part�culas en funci�n de si est� viendo o siguiendo al jugador
            if (seeingPlayer) senseFX.startColor = Color.red;
            else senseFX.startColor = Color.yellow;
            senseFX.emissionRate = 20;


        }
        // Si el zombie est� escuchando un sonido
        else if (hearingSound == true)
        {
            // Cambio de par�metros de velocidad y aceleraci�n
            agent.speed = soundSpeed;
            agent.acceleration = 20;
            roaming = false;
            // Cambio de color de las part�culas
            senseFX.startColor = Color.cyan;
            senseFX.emissionRate = 15;
        }

        // Si el zombie est� merodeando
        else if (roaming == true)
        {
            // Cambio de objetivo del zombie si est� cerca del objetivo, si se ha cumplido el timer o si la velocidad es muy baja
            if (agent.remainingDistance <= 1f || changeTarget || curSpeed < 0.5)
            {
                target = new Vector3(gameObject.transform.position.x + Random.Range(-30, 30), 0, gameObject.transform.position.z + Random.Range(-30, 30));
                changeTarget = false;
            }
            // Cambio de par�metros de velocidad y aceleraci�n
            agent.acceleration = 20;
            agent.speed = roamSpeed;

            // Cambio de color de las part�culas
            senseFX.startColor = Color.green;
            senseFX.emissionRate = 10;
        }
    }
}

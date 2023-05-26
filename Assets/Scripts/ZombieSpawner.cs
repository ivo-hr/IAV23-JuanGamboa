using System.Collections;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine;

/// <summary>
/// Este script se encarga de spawnear zombies en el mapa. Tambi�n lleva la cuenta de los zombies vivos.
/// Se le pueden a�adir puntos de spawn en el inspector, y el script elegir� uno aleatoriamente para spawnear al zombie.
/// </summary>
public class ZombieSpawner : MonoBehaviour
{
    /// <summary>
    /// Prefab del zombie a spawnear
    /// </summary>
    [SerializeField] private GameObject zombiePrefab;
    /// <summary>
    /// N�mero de zombies que se spawnear�n al empezar la partida
    /// </summary>
    [SerializeField] public int startZombies = 20;
    /// <summary>
    /// Ratio de zombies que se spawnear�n por cada zombie muerto
    /// </summary>
    [SerializeField] public float kill2spawnRatio = 1f;
    /// <summary>
    /// Ratio de tiempo que tarda en spawnear un zombie de la cola
    /// </summary>
    [SerializeField] private float spawnRate = 1f;
    /// <summary>
    /// Tiempo que tarda en spawnear un zombie si o si
    /// </summary>
    [SerializeField] private float forcedSpawnTime = 10f;
    /// <summary>
    /// Radio de spawn de los zombies en cada punto de spawn
    /// </summary>
    [SerializeField] private float spawnRadius = 5f;
    /// <summary>
    /// Puntos de spawn de los zombies
    /// </summary>
    [SerializeField] private Transform[] spawnPoints;
    /// <summary>
    /// N�mero de zombies vivos
    /// </summary>
    [SerializeField] public int zombiesAlive = 0;
     
    // Timer para spawnear zombies de la cola
    private float spawnTimer = 0f;
    // Timer para spawnear zombies forzadamente
    private float forcedSpawnTimer = 0f;
    // N�mero de zombies que hay que spawnear
    private int zombiesToSpawn = 0;
    // Residuo de zombies que hay que spawnear. Se acumula hasta llegar a 1 y se spawnear� un zombie m�s.
    private float residueZombies = 0f;


    // Start is called before the first frame update
    void Start()
    {
        // Spawn de los zombies iniciales
        for (int i = 0; i < startZombies; i++)
        {
            SpawnZombie();
        }

        // Se obtiene el ratio de spawn de los zombies de la clase GameSettings (configurado en el men� de inicio).
        kill2spawnRatio = FindObjectOfType<GameSettings>().GetKillSpawnRate();

        // Se obtiene el ratio de spawn de los zombies de la clase GameSettings (configurado en el men� de inicio).
        // Se le resta al tiempo de spawn forzado para que los zombies no se spawneen demasiado r�pido.
        forcedSpawnTime = 10f - FindObjectOfType<GameSettings>().GetZombieSpawnRate();
    }

    // Update is called once per frame
    void Update()
    {
        // Cuenta de ambos timer
        spawnTimer += Time.deltaTime;
        forcedSpawnTimer += Time.deltaTime;

        // Si el timer de spawn de zombies de la cola llega a su l�mite, se spawnea un zombie y se resetea el timer.
        if (spawnTimer >= spawnRate)
        {
            spawnTimer = 0f;

            // Si hay zombies que spawnear, se spawnea uno y se resta uno al contador.
            if (zombiesToSpawn > 0)
            {
                zombiesToSpawn--;
                SpawnZombie();
            }
        }

        // Si el timer de spawn forzado llega a su l�mite, se spawnea un zombie y se resetea el timer.
        if (forcedSpawnTimer >= forcedSpawnTime)
        {
            forcedSpawnTimer = 0f;
            zombiesToSpawn++;
        }
    }

    /// <summary>
    /// M�todo que se llama cuando un zombie muere. Se resta uno al contador de zombies vivos y se a�ade al contador de zombies que hay que spawnear.
    /// </summary>
    public void KilledZombie()
    {
        // Resta uno al contador de zombies vivos
        zombiesAlive--;

        // Redondea el ratio de spawn de los zombies y lo a�ade al contador de zombies que hay que spawnear.
        int rounded = (int)kill2spawnRatio; 
        
        // A�ade el residuo del ratio de spawn de los zombies al asistente de spawn de zombies.
        residueZombies += kill2spawnRatio - rounded;

        // Si los residuos son mayor o igual a 1, se a�ade uno al redondeo de zombies que hay que spawnear y se resta el residuo redondeado (1).
        if (residueZombies >= 1f)
        {
            rounded += (int)residueZombies;
            residueZombies -= (int)residueZombies;
        }
        
        // Se a�ade el redondeo de zombies que hay que spawnear al contador de zombies que hay que spawnear.
        zombiesToSpawn += rounded;
    }

    /// <summary>
    /// M�todo que spawnea un zombie en un punto de spawn aleatorio.
    /// </summary>
    private void SpawnZombie()
    {
        // Se elige un punto de spawn aleatorio
        Transform spawnPoint = spawnPoints[Random.Range(0, spawnPoints.Length)];

        // Se elige una posici�n aleatoria dentro del radio de spawn del punto de spawn
        Vector3 spawnPosition = spawnPoint.position + new Vector3(Random.insideUnitCircle.x * spawnRadius, 0f, Random.insideUnitCircle.y * spawnRadius);

        // Se spawnea el zombie en la posici�n elegida, se le asigna la capa de zombie y se suma uno al contador de zombies vivos.
        GameObject z = Instantiate(zombiePrefab, spawnPosition, spawnPoint.rotation);
        z.layer = LayerMask.NameToLayer("Zombie");
        zombiesAlive++;
    }
}

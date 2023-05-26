using System.Collections;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine;

public class ZombieSpawner : MonoBehaviour
{
    [SerializeField] private GameObject zombiePrefab;
    [SerializeField] public int startZombies = 20;
    [SerializeField] public float kill2spawnRatio = 1f;
    [SerializeField] private float spawnRate = 1f;
    [SerializeField] private float forcedSpawnTime = 10f;
    [SerializeField] private float spawnRadius = 5f;
    [SerializeField] private Transform[] spawnPoints;

    [SerializeField] public int zombiesAlive = 0;

    private float spawnTimer = 0f;
    private float forcedSpawnTimer = 0f;
    private int zombiesToSpawn = 0;
    private float residueZombies = 0f;
    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < startZombies; i++)
        {
            SpawnZombie();
        }

        kill2spawnRatio = FindObjectOfType<GameSettings>().GetKillSpawnRate();

        spawnRate = FindObjectOfType<GameSettings>().GetZombieSpawnRate();
    }

    // Update is called once per frame
    void Update()
    {
        spawnTimer += Time.deltaTime;
        forcedSpawnTimer += Time.deltaTime;
        if (spawnTimer >= spawnRate)
        {
            spawnTimer = 0f;
            if (zombiesToSpawn > 0)
            {
                zombiesToSpawn--;
                SpawnZombie();
            }
        }

        if (forcedSpawnTimer >= forcedSpawnTime)
        {
            forcedSpawnTimer = 0f;
            zombiesToSpawn++;
        }
    }

    public void KilledZombie()
    {
        zombiesAlive--;

        int rounded = (int)kill2spawnRatio; 
        
        residueZombies += kill2spawnRatio - rounded;

        if (residueZombies >= 1f)
        {
            zombiesToSpawn += (int)residueZombies + rounded;
            residueZombies -= (int)residueZombies;
        }
        else
        {
            zombiesToSpawn += rounded;
        }


    }

    private void SpawnZombie()
    {
        Transform spawnPoint = spawnPoints[Random.Range(0, spawnPoints.Length)];

        Vector3 spawnPosition = spawnPoint.position + new Vector3(Random.insideUnitCircle.x * spawnRadius, 0f, Random.insideUnitCircle.y * spawnRadius);

        GameObject z = Instantiate(zombiePrefab, spawnPosition, spawnPoint.rotation);
        z.layer = LayerMask.NameToLayer("Zombie");

        zombiesAlive++;
    }
}

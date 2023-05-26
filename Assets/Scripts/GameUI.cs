using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class GameUI : MonoBehaviour
{
    private ZombieSpawner zombieSpawner;
    [SerializeField] private TextMeshProUGUI zombiesN;
    [SerializeField] private TextMeshProUGUI timer;
    // Start is called before the first frame update
    void Start()
    {
        
        zombieSpawner = FindAnyObjectByType<ZombieSpawner>();
        Cursor.lockState = CursorLockMode.Locked;
    }

    // Update is called once per frame
    void Update()
    {
        if (Cursor.lockState == CursorLockMode.Locked)
        {
            timer.text = "Time: " + Time.timeSinceLevelLoad.ToString("F2");
        }
        zombiesN.text = "Zombies: " + zombieSpawner.zombiesAlive;

    }
}

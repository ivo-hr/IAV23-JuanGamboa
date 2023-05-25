using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameSettings : MonoBehaviour
{
    // Start is called before the first frame update
    static public float zombieSpawnRate = 1f;
    static public float killSpawnRate = 0.1f;
    static public bool godMode = false;

    private void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
    }

    private void Start()
    {
        zombieSpawnRate = 1f;
        killSpawnRate = 0.1f;
    }

    public void SetZombieSpawnRate(float rate)
    {
        zombieSpawnRate = rate;
        Debug.Log("Zombie Spawn Rate: " + zombieSpawnRate);
    }

    public void SetKillSpawnRate(float rate)
    {
        killSpawnRate = rate;
        Debug.Log("Kill Spawn Rate: " + killSpawnRate);
    }

    public void SetGodMode(bool mode)
    {
        godMode = mode;
        Debug.Log("God Mode: " + godMode);
    }

    public void StartGame()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("MainScene");
    }

    public float GetZombieSpawnRate()
    {
        return zombieSpawnRate;
    }

    public float GetKillSpawnRate()
    {
        return killSpawnRate;
    }

    public bool GetGodMode()
    {
        return godMode;
    }
}

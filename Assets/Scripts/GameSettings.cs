using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Script para guardar las opciones de juego a lo largo de las escenas
/// </summary>
public class GameSettings : MonoBehaviour
{
    //Variables de opción de juego

    /// <summary>
    /// Spawn rate forzado de los zombies (cada cuánto tiempo se spawnean zombies)
    /// Este tiempo se le resta a 10 segundos (ej.: 0 -> zombie/10s, 9 -> zombie/1s)
    /// </summary>
    static public float zombieSpawnRate = 1f;
    /// <summary>
    /// Cuantos zombies se spawnean por cada zombie muerto
    /// </summary>
    static public float killSpawnRate = 1f;
    /// <summary>
    /// Si el jugador es inmortal o no
    /// </summary>
    static public bool godMode = false;

    private void Awake()
    {
        // Para que no se destruya al cambiar de escena
        DontDestroyOnLoad(this.gameObject);
    }

    private void Start()
    {
        // Valores por defecto
        zombieSpawnRate = 0f;
        killSpawnRate = 1f;
    }
    /// <summary>
    /// Setter de la variable zombieSpawnRate
    /// </summary>
    /// <param name="rate">Este tiempo se le resta a 10 segundos (ej.: 0 -> zombie/10s, 9 -> zombie/1s)</param>
    public void SetZombieSpawnRate(float rate)
    {
        zombieSpawnRate = rate;
        Debug.Log("Zombie Spawn Rate: " + zombieSpawnRate);
    }

    /// <summary>
    /// Setter de la variable killSpawnRate
    /// </summary>
    /// <param name="rate">Cuantos zombies se spawnean por cada zombie muerto</param>
    public void SetKillSpawnRate(float rate)
    {
        killSpawnRate = rate;
        Debug.Log("Kill Spawn Rate: " + killSpawnRate);
    }

    /// <summary>
    /// Setter de la variable godMode
    /// </summary>
    /// <param name="mode">Si el jugador es inmortal o no</param>
    public void SetGodMode(bool mode)
    {
        godMode = mode;
        Debug.Log("God Mode: " + godMode);
    }

    /// <summary>
    /// Carga la escena del juego
    /// </summary>
    public void StartGame()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene("MainScene");
    }

    /// <summary>
    /// Getter de la variable zombieSpawnRate
    /// </summary>
    /// <returns>El spawn rate de los zombies</returns>
    public float GetZombieSpawnRate()
    {
        return zombieSpawnRate;
    }

    /// <summary>
    /// Getter de la variable killSpawnRate
    /// </summary>
    /// <returns>Cuántos zombies spawnean por zombie muerto</returns>
    public float GetKillSpawnRate()
    {
        return killSpawnRate;
    }

    /// <summary>
    /// Getter de la variable godMode
    /// </summary>
    /// <returns>Si se activa la invencibilidad o no</returns>
    public bool GetGodMode()
    {
        return godMode;
    }
}

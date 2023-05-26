using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;


/// <summary>
/// Este script se encarga de mostrar la información del juego en la interfaz de usuario.
/// </summary>
public class GameUI : MonoBehaviour
{
    // El spawner de zombies. Se usa para mostrar el número de zombies vivos.
    private ZombieSpawner zombieSpawner;

    /// <summary>
    /// Texto de número de zombies vivos.
    /// </summary>
    [SerializeField] private TextMeshProUGUI zombiesN;
    /// <summary>
    /// Texto de tiempo de partida.
    /// </summary>
    [SerializeField] private TextMeshProUGUI timer;


    // Start is called before the first frame update
    void Start()
    {
        // Se busca el spawner de zombies.
        zombieSpawner = FindAnyObjectByType<ZombieSpawner>();

        // Se bloquea el cursor. Esto sirve para que no se salga de la pantalla al mover la cámara.
        Cursor.lockState = CursorLockMode.Locked;
    }

    // Update is called once per frame
    void Update()
    {
        // Se actualizan los textos.

        // Si el cursor está bloqueado, se muestra el tiempo de partida. Si no, significa que el jugador ha muerto y se para el tiempo de partida.
        if (Cursor.lockState == CursorLockMode.Locked)
        {
            timer.text = "Time: " + Time.timeSinceLevelLoad.ToString("F2");
        }
        zombiesN.text = "Zombies: " + zombieSpawner.zombiesAlive;

    }
}

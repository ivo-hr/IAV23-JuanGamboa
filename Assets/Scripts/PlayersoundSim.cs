using System.Collections;
using System.Collections.Generic;
using UnityEngine;


/// <summary>
/// Este script emula el sonudo que hace el jugador al moverse. El sonido se crea cuando el jugador se mueve a una velocidad mayor o igual a la 
/// velocidad a la que se empieza a escuchar el sonido, emulando que el sonido se escucha cuando el jugador corre o salta.
/// </summary>
public class PlayersoundSim : MonoBehaviour
{
    /// <summary>
    /// Prefab del sonido.
    /// </summary>
    [SerializeField] private GameObject soundPrefab;
    /// <summary>
    /// Rango del sonido.
    /// </summary>
    [SerializeField] private float soundRange = 10f;
    /// <summary>
    /// Velocidad a la que se empieza a escuchar el sonido.
    /// </summary>
    [SerializeField] private float speedToSound = 5f;

    // Ultima posicion del jugador antes del frame actual.
    private Vector3 lastPos;
    // Velocidad actual del jugador.
    private float currentSpeed;
    // Sonido actual.
    private GameObject sound;
    // Temporizador para destruir el sonido.
    private float soundTimer = 0f;


    // Start is called before the first frame update
    void Start()
    {
        // Inicializamos la ultima posicion del jugador.
        lastPos = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        // Calculamos la velocidad actual del jugador.
        currentSpeed = (transform.position - lastPos).magnitude / Time.deltaTime;
        // Actualizamos la ultima posicion del jugador.
        lastPos = transform.position;

        // Si la velocidad actual es mayor o igual a la velocidad a la que se empieza a escuchar el sonido, creamos el sonido.
        if (currentSpeed >= speedToSound)
        {
            // Si ya hay un sonido, lo destruimos y creamos uno nuevo.
            if (sound != null)
                Destroy(sound);
            sound = Instantiate(soundPrefab);
            // Posicionamos el sonido en la posicion del jugador y escalamos el sonido.
            sound.transform.position = transform.position;
            sound.transform.localScale = new Vector3(soundRange, soundRange, soundRange);
        }

        // Si hay un sonido, actualizamos el temporizador para destruirlo.
        soundTimer += Time.deltaTime;
        if (soundTimer >= 1f && sound != null)
        {
            Destroy(sound);
            soundTimer = 0f;
        }
    }
}

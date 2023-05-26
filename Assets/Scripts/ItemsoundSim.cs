using System.Collections;
using System.Collections.Generic;
using UnityEngine;


/// <summary>
/// Este script se encarga de simular el sonido de un objeto al chocar con el suelo.
/// </summary>
public class ItemsoundSim : MonoBehaviour
{
    /// <summary>
    /// Prefab del sonido
    /// </summary>
    [SerializeField] private GameObject soundPrefab;
    // El sonido que está activo
    private GameObject sound;
    /// <summary>
    /// Rango del sonido
    /// </summary>
    [SerializeField] private float soundRange = 20f;
    /// <summary>
    /// Duración del sonido
    /// </summary>
    [SerializeField] private float soundDuration = 10f;
    /// <summary>
    /// Si el sonido está activo o no
    /// </summary>
    [SerializeField] private bool sounding = false;
    // Temporizador del sonido
    private float soundTimer = 0f;
    // Si el objeto ha sido lanzado o no
    public bool thrown = false;



    private void OnCollisionEnter(Collision collision)
    {
        

        // Si el objeto colisiona con el suelo y ha sido lanzado, se activa el sonido.
        if (collision.gameObject.layer == LayerMask.NameToLayer("Level") && thrown){
            // Se instancia el sonido y se activa.
            sound = Instantiate(soundPrefab);
            // Se le da el rango y la posición del objeto.
            sound.transform.localScale = new Vector3(soundRange, soundRange, soundRange);
            sound.transform.position = transform.position;
            // Se activa el sonido.
            sounding = true;
            // Ya no es lanzado el objeto.
            thrown = false;

            // Se cambia la capa del objeto para que se pueda volver a lanzar.
            gameObject.layer = LayerMask.NameToLayer("Thowables");

            //Suena el sonido al chocar
            gameObject.GetComponent<AudioSource>().Play();
        }
    }

    void Update()
    {
        // Si el sonido está activo, se empieza a contar el tiempo de duración.
        if (sounding)
        {
            soundTimer += Time.deltaTime;
            if (soundTimer >= soundDuration)
            {
                // Se destruye el sonido.
                Destroy(sound);

                // Reseteamos las variables.
                sounding = false;
                soundTimer = 0f;

            }
        }
    }
}

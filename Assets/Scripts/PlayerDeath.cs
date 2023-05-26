using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine;
using UnityEngine.InputSystem;

/// <summary>
/// Este script se encarga de la muerte del jugador. Cuando el jugador muere, se muestran algunos efectos y se vuelve al menú principal.
/// </summary>
public class PlayerDeath : MonoBehaviour
{
    /// <summary>
    /// Tiempo que tarda en volver al menú principal.
    /// </summary>
    [SerializeField] private float deathTime = 5f;
    // Empezar o no el timer.
    private bool startTimer = false;
    /// <summary>
    /// Luz principal de la escena.
    /// </summary>
    [SerializeField] private Light light;
    // Si godMode está activado, el jugador no muere.
    private bool godMode = false;


    // Start is called before the first frame update
    void Start()
    {
        // Se obtiene el valor de godMode.
        godMode = FindObjectOfType<GameSettings>().GetGodMode();
    }

    // Update is called once per frame
    void Update()
    {
        // Si el timer está activado, se aumenta la intensidad de la luz y se reduce el tamaño del jugador.
        if (startTimer)
        {
            light.intensity += Time.deltaTime * 10f;
            if (gameObject.transform.localScale.x > 0)
                gameObject.transform.localScale -= new Vector3(0.005f, 0.005f, 0.005f);

            // Una vez que el timer llega a 0, se vuelve al menú principal.
            deathTime -= Time.deltaTime;
            if (deathTime <= 0f)
                UnityEngine.SceneManagement.SceneManager.LoadScene("Menu");

        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Si el jugador colisiona con un zombie, se activa el timer y desactivan los scripts del jugador.
        if (collision.gameObject.layer == LayerMask.NameToLayer("Zombie") && !godMode)
        {
            // Se desactivan los scripts del jugador y se muestra el cursor.
            Cursor.lockState = CursorLockMode.None;
            gameObject.GetComponent<PlayerInput>().enabled = false;
            gameObject.GetComponent<ThirdPersonController>().enabled = false;

            // Se activa el timer.
            startTimer = true;
        }
    }
}

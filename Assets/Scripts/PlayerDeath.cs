using StarterAssets;
using System.Collections;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerDeath : MonoBehaviour
{
    [SerializeField] private Camera cam;
    [SerializeField] private float deathTime = 5f;
    private bool startTimer = false;
    [SerializeField] private Light light;
    private bool godMode = false;
    // Start is called before the first frame update
    void Start()
    {
        godMode = FindObjectOfType<GameSettings>().GetGodMode();
    }

    // Update is called once per frame
    void Update()
    {
        if (startTimer)
        {

            light.intensity += Time.deltaTime * 10f;

            deathTime -= Time.deltaTime;
            if (deathTime <= 0f)
            {
                UnityEngine.SceneManagement.SceneManager.LoadScene("Menu");
            }

            else if (gameObject.transform.localScale.x > 0)
            {
                gameObject.transform.localScale -= new Vector3(0.005f, 0.005f, 0.005f);
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == LayerMask.NameToLayer("Zombie") && !godMode)
        {
            Cursor.lockState = CursorLockMode.None;
            gameObject.GetComponent<PlayerInput>().enabled = false;
            gameObject.GetComponent<ThirdPersonController>().enabled = false;


            startTimer = true;
        }
    }
}

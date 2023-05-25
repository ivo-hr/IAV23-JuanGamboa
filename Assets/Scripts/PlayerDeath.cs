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
    // Start is called before the first frame update
    void Start()
    {
        this.enabled = !FindObjectOfType<GameSettings>().GetGodMode();
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
                gameObject.transform.localScale -= new Vector3(0.015f, 0.015f, 0.015f);
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == LayerMask.NameToLayer("Zombie"))
        {
            gameObject.GetComponent<PlayerInput>().enabled = false;
            gameObject.GetComponent<ThirdPersonController>().enabled = false;
            gameObject.GetComponent<StarterAssetsInputs>().cursorLocked = false;

            startTimer = true;
        }
    }
}

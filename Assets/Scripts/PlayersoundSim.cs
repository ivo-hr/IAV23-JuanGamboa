using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayersoundSim : MonoBehaviour
{
    [SerializeField] private GameObject soundPrefab;
    [SerializeField] private float soundRange = 10f;
    [SerializeField] private float speedToSound = 5f;

    private Vector3 lastPos;
    private float currentSpeed;
    private GameObject sound;
    private float soundTimer = 0f;
    // Start is called before the first frame update
    void Start()
    {
        lastPos = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        currentSpeed = (transform.position - lastPos).magnitude / Time.deltaTime;
        lastPos = transform.position;
        if (currentSpeed >= speedToSound)
        {
            if (sound != null)
                Destroy(sound);
            sound = Instantiate(soundPrefab);
            sound.transform.position = transform.position;
            sound.transform.localScale = new Vector3(soundRange, soundRange, soundRange);
        }

        soundTimer += Time.deltaTime;
        if (soundTimer >= 1f && sound != null)
        {
            Destroy(sound);
            soundTimer = 0f;
        }
    }
}

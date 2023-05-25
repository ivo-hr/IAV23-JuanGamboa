using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemsoundSim : MonoBehaviour
{
    [SerializeField] private GameObject soundPrefab;
    private GameObject sound;
    [SerializeField] private float soundRange = 20f;
    [SerializeField] private float soundDuration = 10f;
    [SerializeField] private bool sounding = false;
    private float soundTimer = 0f;
    public bool thrown = false;
    // Start is called before the first frame update
    void Start()
    {
        
    }


    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == LayerMask.NameToLayer("Level") && thrown){
            sound = Instantiate(soundPrefab);
            sound.transform.localScale = new Vector3(soundRange, soundRange, soundRange);
            sound.transform.position = transform.position;
            sounding = true;
            thrown = false;
        }
    }

    void Update()
    {
        if (sounding)
        {
            soundTimer += Time.deltaTime;
            if (soundTimer >= soundDuration)
            {
                Destroy(sound);
                sounding = false;
                soundTimer = 0f;

            }
        }
    }
}

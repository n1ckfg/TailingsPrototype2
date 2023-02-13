using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomPitch : MonoBehaviour
{

    public float range = 0.2f;
    public AudioSource audiosource;

    private void Start() {
        float newPitch = 1f + Random.Range(-range, range);
        audiosource.pitch = newPitch;
    }

}

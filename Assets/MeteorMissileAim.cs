﻿using UnityEngine;
using System.Collections;

public class MeteorMissileAim : MonoBehaviour
{

    // Use this for initialization
    public Vector3 startRotation;
    public Transform meteor;
    public float lerpSpeed = .1f;
    public float missileSpeed = 1f;
    void Start()
    {
        //startRotation = Random.rotation.eulerAngles;
        meteor = GameObject.FindGameObjectWithTag("Meteor").transform;
    }

    // Update is called once per frame
    void Update()
    {
        Quaternion playerTarget = Quaternion.LookRotation(meteor.position - transform.position, Vector3.up);
        Quaternion newRot = Quaternion.Slerp(transform.rotation, playerTarget, lerpSpeed);
        transform.rotation = newRot;
        transform.Translate(Vector3.forward * missileSpeed * Time.deltaTime);

    }
}

using UnityEngine;
using System.Collections;

public class MeteorMissileAim : MonoBehaviour
{

    // Use this for initialization
    public Vector3 startRotation;
    public Transform meteor;
    public float lerpSpeed = .1f;
    public float missileSpeed = 1f;
    public float accellAmt = 1f;
    public bool canHit = true;

    void Start()
    {
        //startRotation = Random.rotation.eulerAngles;
        meteor = GameObject.FindGameObjectWithTag("Meteor").transform;
    }

    // Update is called once per frame
    void Update()
    {

        transform.localScale =  Vector3.one * (missileSpeed-50f);
        missileSpeed += accellAmt;
        Quaternion playerTarget = Quaternion.LookRotation(meteor.position - transform.position, Vector3.up);
        Quaternion newRot = Quaternion.Slerp(transform.rotation, playerTarget, lerpSpeed);
        transform.rotation = newRot;
        transform.Translate(Vector3.forward * missileSpeed * Time.deltaTime);

    }

    void OnTriggerEnter(Collider col)
    {
        if (col.CompareTag("MeteorInner"))
        {
            if (canHit)
            {
                Debug.Log(col.gameObject);
                col.transform.parent.GetComponent<MeteorDamage>().MissileHit();
                Destroy(gameObject);
                 canHit = false;
            }
           
        }
    }
}

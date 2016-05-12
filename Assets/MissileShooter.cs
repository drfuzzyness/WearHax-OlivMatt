using UnityEngine;
using System.Collections;

public class MissileShooter : MonoBehaviour {

    public bool canShoot;
    public bool lookingAtMeteor;

    public GameObject playerMissile;
    public Transform leftHand;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

        if (canShoot)
        {
            RaycastHit hitInfo;
           if( Physics.Raycast(transform.position, Camera.main.transform.forward, out hitInfo)){
                if (hitInfo.collider.CompareTag("Meteor"))
                {
                    lookingAtMeteor = true;
                }
                else
                {
                    lookingAtMeteor = false;
                }
            

            }

            if (lookingAtMeteor && Input.GetKeyDown(KeyCode.U))
            {
                Instantiate(playerMissile, leftHand.position, leftHand.rotation);
            }

        }
	
	}



}

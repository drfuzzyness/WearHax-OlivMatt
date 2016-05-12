using UnityEngine;
using System.Collections;

public class MissileShooter : MonoBehaviour {

    public bool canShoot;
    public bool lookingAtMeteor;

    public GameObject playerMissile;
    public GameObject missilePickup;

    public Transform leftHand;
    public GameObject targetSphere;
    // Use this for initializationp
    public Material mat;
    public float targetVal=1f;
    public  float val;

    void Start () {
      mat=  targetSphere.GetComponent<MeshRenderer>().material;

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


        }

        if (lookingAtMeteor)
        {
            targetVal = 0f;
        }
        else
        {
            targetVal = .6f;
        }

        val = Mathf.Lerp(val, targetVal, .01f);
        mat.SetFloat("_fade", val);
        targetSphere.transform.localScale = Vector3.one * (1.2f + val);
	
	}
    public void GiveAmmoFromBuilding( Transform buildingPos )
    {
        //Instantiate(missilePickup,buildingPos.position+Vector3.up*10f,Quaternion.Identity);
    }

    public void ShootTheShot()
    {
        if (lookingAtMeteor)
        {
            Instantiate(playerMissile, leftHand.position, leftHand.rotation);
        }
    }



}

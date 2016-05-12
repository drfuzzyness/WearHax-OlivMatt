using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour {

    // Use this for initialization
    public MissileShooter shooter;
	void Start () {
        shooter = GameObject.Find("CenterEyeAnchor").GetComponent<MissileShooter>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    void OnCollisionEnter(Collision col)
    {
        if (col.collider.CompareTag("player"))
        {
            shooter.ammo++;
            Destroy(gameObject);
            Debug.Log("yep");
        }
    }
}

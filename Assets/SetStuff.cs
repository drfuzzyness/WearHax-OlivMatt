using UnityEngine;
using System.Collections;

public class SetStuff : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GetComponent<MeshCollider> ().enabled = false;
		GetComponent<Rigidbody> ().isKinematic = true;
	}


	public void Go(){
		GetComponent<Rigidbody> ().useGravity = false;
		GetComponent<MeshCollider> ().enabled = true;
		GetComponent<Rigidbody> ().isKinematic = false;
		//Debug.Log ("ye");
		GetComponent<Rigidbody>().AddForce(Random.insideUnitSphere*360);
        GetComponent<FragmentScript>().enabled = true;
        GetComponent<FragmentScript>().active = true;
        GetComponent<SetGravityDelay>().enabled = true;
	}

	// Update is called once per frame
	void Update () {
	
	}
}

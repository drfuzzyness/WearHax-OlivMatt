using UnityEngine;
using System.Collections;

public class FractureScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	public void ActivatePhysics(){

		GetComponent<Rigidbody> ().useGravity = true;
		GetComponent<MeshCollider> ().enabled = true;
	}
}

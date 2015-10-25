using UnityEngine;
using System.Collections;

public class FractureScript : MonoBehaviour {

	// Use this for initialization
	public FragmentManager manager;
	void Start () {
		manager = GameObject.Find ("Manager").GetComponent<FragmentManager>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	void Kill(){
		Destroy (gameObject);
	}
	public void ActivatePhysics(){
		Invoke ("Kill", manager.killTime);
		GetComponent<Rigidbody> ().useGravity = true;
		GetComponent<MeshCollider> ().enabled = true;
	}
}

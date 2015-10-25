using UnityEngine;
using System.Collections;

public class SetGravityDelay : MonoBehaviour {

	// Use this for initialization
	public GameObject parent;
	public bool stop=false;
	void Start () {
		parent = transform.parent.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
		if(parent.GetComponent<MoveFractures>().destroying && !stop){
			stop=true;
			Invoke("Gravity",5f);
	}
}

	public void Gravity(){
		GetComponent<Rigidbody> ().useGravity = true;
		GetComponent<Rigidbody> ().AddForce (Vector3.down * 10f, ForceMode.Impulse);
	}
}

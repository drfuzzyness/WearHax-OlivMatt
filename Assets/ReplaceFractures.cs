using UnityEngine;
using System.Collections;

public class ReplaceFractures : MonoBehaviour {

	// Use this for initialization
	public GameObject fractureProxy;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col){
		fractureProxy.GetComponent<MoveFractures> ().colPos = col.contacts [0].point;

		if (col.gameObject.name == "HitArm") {
			fractureProxy.GetComponent<MoveFractures>().MoveToReplace();
			Destroy (gameObject);
		}
	}
}

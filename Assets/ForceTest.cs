using UnityEngine;
using System.Collections;

public class ForceTest : MonoBehaviour {

	// Use this for initialization
	public float forceAmt=50f;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	if (Input.GetKey (KeyCode.A)) {
			GetComponent<Rigidbody> ().AddForce (Vector3.right * forceAmt);
		}
	}
}

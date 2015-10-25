using UnityEngine;
using System.Collections;

public class ControlXbox : MonoBehaviour {

	// Use this for initialization
	public float speed;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		transform.Translate (Input.GetAxis ("Vertical") * Vector3.forward * speed);
	}
}

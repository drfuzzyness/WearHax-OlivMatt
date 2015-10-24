using UnityEngine;
using System.Collections;

public class MoveAroundTest : MonoBehaviour {

	// Use this for initialization
	public float speed=1f;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate (new Vector3 (Input.GetAxis ("Horizontal") * speed, 0f, Input.GetAxis ("Vertical")));
	}
}

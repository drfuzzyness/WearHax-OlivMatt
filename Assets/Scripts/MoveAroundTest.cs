using UnityEngine;
using System.Collections;

public class MoveAroundTest : MonoBehaviour {

	// Use this for initialization
	public float speed=1f;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		transform.Translate(Vector3.forward*speed * Input.GetAxis ("Vertical") * Time.deltaTime + Vector3.right*speed * Input.GetAxis ("Horizontal") * Time.deltaTime);
		//transform.Translate(transform.TransformDirection(transform.forward)* speed*Input.GetAxis("Vertical")*Time.deltaTime);
		//transform.Translate (transform.right * s);

		//transform.
		//transform.Translate (new Vector3 (Input.GetAxis ("Horizontal") * speed*Time.deltaTime, 0f, Input.GetAxis ("Vertical")));


	}
}

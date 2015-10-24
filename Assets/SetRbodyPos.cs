using UnityEngine;
using System.Collections;

public class SetRbodyPos : MonoBehaviour {

	// Use this for initialization
	public Transform targetPos;
	public Rigidbody rbody;
	void Start () {
		rbody = GetComponent<Rigidbody> ();
	}
	
	// Update is called once per frame
	void Update () {
		rbody.MovePosition (targetPos.position);
	
	}
}

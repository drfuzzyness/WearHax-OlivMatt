using UnityEngine;
using System.Collections;

public class MoveFractures : MonoBehaviour {

	// Use this for initialization
	public Vector3 startPos;
	public bool destroying=false;
	public Component[] fragScripts;
	public Vector3 colPos;
	//public Transform spheretest;
	void Start () {

		fragScripts = GetComponentsInChildren<FragmentScript> ();
		startPos = transform.position;
		transform.Translate (Vector3.down * 500f);
	}
	
	// Update is called once per frame
	void Update () {
		//spheretest.position = colPos;
	
	}
	public void MissileReplace(Vector3 pos,Quaternion rot){	

		foreach (FragmentScript child in fragScripts) {
			child.GetComponent<Rigidbody>().AddForce(Random.insideUnitSphere*360);
			//child.colPos=colPos;
			
		}
		transform.position = pos;
		transform.rotation = rot;
		destroying = true;
	}
	public void MoveToReplace(){	
		transform.position = startPos;
		destroying = true;

		foreach (FragmentScript child in fragScripts) {
			child.ActivateFragments();
			//child.colPos=colPos;

		}
	}
}

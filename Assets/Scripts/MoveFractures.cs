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
		transform.position = new Vector3 (0f, -500f, 0f);
	}
	
	// Update is called once per frame
	void Update () {
		//spheretest.position = colPos;
	
	}
	public void MoveToReplace(){	
		transform.position = startPos;
		destroying = true;

		foreach (FragmentScript child in fragScripts) {
			child.ActivateFragments();
			child.colPos=colPos;

		}
	}
}

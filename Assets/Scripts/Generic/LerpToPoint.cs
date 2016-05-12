using UnityEngine;
using System.Collections;

public class LerpToPoint : MonoBehaviour {
	
	public Transform target;
	public float percentagePerSecond;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 newPos = Vector3.Lerp( transform.position, target.position, percentagePerSecond * Time.deltaTime );
		transform.position = newPos;
	}
}

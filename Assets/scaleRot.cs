using UnityEngine;
using System.Collections;

public class scaleRot : MonoBehaviour {

	public float scale=1f;
	public Vector3 rot;
	// Use this for initialization
	void Start () {
	
		rot = GameObject.Find ("Manager").GetComponent<Test> ().rot;
	}
	
	// Update is called once per frame
	void Update () {
		transform.localScale = Vector3.one * scale;
		transform.rotation = Quaternion.Euler (transform.parent.rotation.eulerAngles + rot);
	
	}
}

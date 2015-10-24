using UnityEngine;
using System.Collections;

public class FragmentScript : MonoBehaviour {
	
	// Use this for initialization
	public GameObject parent;
	public bool stop=false;
	public Rigidbody rbody;
	public Vector3 colPos;
	public float forceAmt=100f;
	void Start () {
		rbody = GetComponent<Rigidbody> ();
		parent = transform.parent.gameObject;

	}

	public void ActivateFragments(){
		rbody.useGravity=true;
		//Vector3 force = (transform.TransformPoint( colPos)-transform.position).normalized;
		//rbody.AddForce (force * forceAmt);
	}
}

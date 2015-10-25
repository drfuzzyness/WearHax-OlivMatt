using UnityEngine;
using System.Collections;

public class FragmentScript : MonoBehaviour {
	
	// Use this for initialization
	public GameObject parent;
	public bool stop=false;
	public Rigidbody rbody;
	public Vector3 colPos;
	public float forceAmt=100f;
	public float killTime;
	public Transform player;
	public float distKill=50f;

	public bool active=false;
	void Start () {
		player=GameObject.Find("PlayerHolder").transform;
		killTime = GameObject.Find ("FragmentManager").GetComponent<FragmentManager> ().killTime;
		rbody = GetComponent<Rigidbody> ();
		parent = transform.parent.gameObject;
		//MeshCollider col = gameObject.AddComponent<MeshCollider> ();
		//col.convex = true;

	}

	void Update(){
		float distance=Vector3.Distance(transform.position,player.position);
if(active&& distance>=distKill){
Destroy(gameObject);
	}
}

	void Kill(){

		Destroy (gameObject);
	}
	public void ActivateFragments(){
		//transform.Rotate (Vector3.one * .01f);
		//GetComponent<MeshCollider> ().sharedMesh = GetComponent<MeshFilter> ().mesh;
		active = true;
		Invoke ("Kill",killTime);
		rbody.useGravity=true;
		//Vector3 force = (transform.TransformPoint( colPos)-transform.position).normalized;
		//rbody.AddForce (force * forceAmt);
	}
}

using UnityEngine;
using System.Collections;

public class MissileReplace : MonoBehaviour {
	
	// Use this for initialization
	public GameObject fractureProxy;
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnCollisionEnter(Collision col){
		MissileCommandManager.instance.OnMissileHit( col );
		fractureProxy.GetComponent<MoveFractures>().MissileReplace(transform.position,transform.rotation);
		Destroy (transform.parent.parent.gameObject);
		
	}
}

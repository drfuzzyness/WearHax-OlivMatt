using UnityEngine;
using System.Collections;

public class ReplaceFractures : MonoBehaviour {

	// Use this for initialization
	public GameObject fractureProxy;
	public bool givePowerup;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col){
		if( col.gameObject.CompareTag( "BuildingGiblet" ) ) {
			return;
		}

		GameManager.instance.OnDestroyBuilding();
		if( givePowerup ) {
			GameManager.instance.OnGetPowerup();
		}
	
		fractureProxy.GetComponent<MoveFractures>().MoveToReplace();
		Destroy (gameObject);
	}
}

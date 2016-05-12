using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameUIController : MonoBehaviour {

	public Text scoreNumTO;
	public Text timerNumTO;
	public Text missileTO;
	public float missileOpacitySensitivity;
	private GameManager gm;
	private MissileCommandManager mc;
	//missile manager

	// Use this for initialization
	void Start () {
		gm = GameManager.instance;
		mc = MissileCommandManager.instance;
	}
	
	// Update is called once per frame
	void Update () {
		// scoreNumTO.text = gm.buildingsDestroyed.ToString();
		// timerNumTO.text = Mathf.Floor( gm.timer ).ToString();
		// Color newMissileColor = missileTO.color;
		// if( mc.midairMissiles.Count > 0 ) {
		// 	Vector3 distance = gm.player.transform.position - mc.midairMissiles[0].transform.position;
		// 	newMissileColor.a = ( 1 / distance.magnitude ) * missileOpacitySensitivity;
		// } else {
		// 	newMissileColor.a = 0;
		// }
		// missileTO.color = newMissileColor;
		// // update missile overlay
	}
}

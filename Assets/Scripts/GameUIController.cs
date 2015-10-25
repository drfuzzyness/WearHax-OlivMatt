using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameUIController : MonoBehaviour {

	public Text scoreNumTO;
	public Text timerNumTO;
	public Text missileTO;
	private GameManager gm;
	//missile manager

	// Use this for initialization
	void Start () {
		gm = GameManager.instance;
	}
	
	// Update is called once per frame
	void Update () {
		scoreNumTO.text = gm.score.ToString();
		timerNumTO.text = gm.timer.ToString();
		missileTO.color = Color.clear;
		// update missile text
		// update missile overlay
	}
}

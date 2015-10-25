using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	[Header("Status")]
	public bool countingDown;
	public float timer = 60f;
	public int score;
	public GameObject player;

	[Header("Balance")]
	public float timePowerupRewardAmt = 5f;
	public float missileHitPenalty = 4f;
	public static GameManager instance;

	public void OnDestroyBuilding() {
		score += 1;
	}

	public void OnGetPowerup() {
		timer += timePowerupRewardAmt;
	}

	public void OnMissileHit() {
		// pause player movement
		// ui for that
	}

	void Awake() {
		if( instance == null ) {
			instance = this;
		} else {
			Destroy( this );
		}
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		timer -= Time.deltaTime;
		if( timer < 0 ) {
			GameOver();
		}
	}

	private void GameOver() {
		Debug.Log( "GAME OVER" );
	}



}

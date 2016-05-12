using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;


public class GameManager : MonoBehaviour {
	
	public enum GameStage { MAIN_MENU, TUTORIAL, TUTORIAL_SHOOT, SHOOTING, WIN, LOSE, DONE };
	
	[Header("Status")]
	public GameStage stage;
	public int buildingsDestroyed;
	public GameObject player;

	[Header("Balance")]
	public float timePowerupRewardAmt = 5f;
	public float missileHitPenalty = 4f;
	public static GameManager instance;
	
	[HeaderAttribute("Rocket Spawning")]
	public float rocketChance;
	public int rocketPityTimer;
	private int rocketPityTick;
	
	[HeaderAttribute("UI")]
	public List<string> introTutorialTextStrings;
	public List<string> shootingTutorialTextStrings;
	public Text uiCenterText;
	public Text uiLowerText;
	private string alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*+:?;|+=-1234567890";
	IEnumerator lowerTextRoutine;
	IEnumerator centerTextRoutine;
	
	[HeaderAttribute("Colors")]
	public Color colorUI;
	public Color colorUIBad;
	public Color colorUIGood;
	
	[Header("Objects")]
	public MeteorMove meteorMove;
    public MissileShooter missleShooter;

	public void OnDestroyBuilding( Transform building ) {
		buildingsDestroyed += 1;
		if( Random.Range(0f,1f) <= rocketChance ) {
            missleShooter.GiveAmmoFromBuilding(building);
		} else {
			rocketPityTick++;
			if( rocketPityTick >= rocketPityTimer ) {
				rocketPityTick = 0;
                missleShooter.GiveAmmoFromBuilding(building);
            }
		}
	}

	public void OnGetPowerup() {
	}

	public void OnMissileHit() {
		// pause player movement
		// ui for that
	}
	
	public void Win() {
		Debug.Log("ATTEMPING TO WIN");
		if( stage != GameStage.LOSE && stage != GameStage.WIN ) 
			StartCoroutine( WinRoutine() );
	}
	
	public void Lose() {
		Debug.Log("ATTEMPING TO LOSE");
		if( stage != GameStage.LOSE && stage != GameStage.WIN ) {
			StartCoroutine( LoseRoutine() );
		}
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
		rocketPityTick = 0;
		StartCoroutine( GameProgression() );
	}
	
	// Update is called once per frame
	void Update () {
		
		if( stage == GameStage.SHOOTING ) {
			if( missleShooter.ammo>=1) {
				uiLowerText.text = "\\\\ TRIGGER TO SHOOT ROCKET[" +missleShooter.ammo + "] //";
				uiLowerText.color = colorUI;
				if( Input.GetAxis("Submit") == 1f ) {
                    missleShooter.ShootTheShot();

                }
			} else {
				uiLowerText.text = "\\\\ DESTROY BUILDINGS FOR AMMO //";
				uiLowerText.color = colorUI;
				if( Input.GetAxis("Submit") == 1f ) {
					uiLowerText.color = colorUIBad;
				}
			}
		} else if( stage != GameStage.TUTORIAL ) {
			uiLowerText.text = "";
		}
		
		if( Input.GetKeyDown( KeyCode.Escape )) {
			SceneManager.LoadScene(0);
		}
	}

	private void GameOver() {
		Debug.Log( "GAME OVER" );
	}
	
	IEnumerator GameProgression() {
		
		stage = GameStage.TUTORIAL;
		// uiLowerText.text = "\\\\ PRESS TRIGGER TO CONTINUE //";
		lowerTextRoutine = SetTextRoutine( uiLowerText, "PRESS TRIGGER TO CONTINUE", true, .03f );
		StartCoroutine( lowerTextRoutine );
		// Basic tutorial, teach how to move and goal
		foreach (string thisTextStr in introTutorialTextStrings) {
			yield return new WaitForSeconds(.2f);
			centerTextRoutine = SetTextRoutine( uiCenterText, thisTextStr, false, .05f );
			StartCoroutine( centerTextRoutine );
			while ( Input.GetAxis("Submit") != 1f ) {
				yield return null;
			}
		}
		
		// Teach player how to shoot the meteor
		stage = GameStage.SHOOTING;
		meteorMove.StartMeteor();
		// Check if player shooting controller has ammo
		while ( Input.GetAxis("Submit") != 1f  ) {
			yield return null;
		}
		StopCoroutine( centerTextRoutine );
		uiCenterText.text = "";
		while ( stage == GameStage.SHOOTING ) {
			yield return null;
		}
	}
	
	IEnumerator WinRoutine() {
		stage = GameStage.WIN;
		uiLowerText.text = "\\\\ PRESS TRIGGER TO CONTINUE //";
		centerTextRoutine = SetTextRoutine( uiCenterText, "CITY SAVED", false, .5f );
		yield return new WaitForSeconds( 6f );
		while ( Input.GetAxis("Submit") != 1f ) {
			yield return null;
		}
		SceneManager.LoadScene(0);
	}
	
	IEnumerator LoseRoutine() {
		stage = GameStage.LOSE;
		uiLowerText.text = "\\\\ PRESS TRIGGER TO CONTINUE //";
		centerTextRoutine = SetTextRoutine( uiCenterText, "CITY DESTROYED", false, .5f );
		yield return new WaitForSeconds( 6f );
		while ( Input.GetAxis("Submit") != 1f ) {
			yield return null;
		}
		SceneManager.LoadScene(0);
	}
	
	IEnumerator SetTextRoutine( Text target, string newText, bool insertAngles, float scrambleTime ) {
		target.text = "";
		string assembledText = "";
		foreach( char thisChar in newText ) {
			for( float t = 0f; t < scrambleTime; t += Time.deltaTime ) {
				if( insertAngles ) {
					target.text = "\\\\ " + assembledText + GetRandomChar() + " //";
				} else {
					target.text = assembledText + GetRandomChar();
				}
				yield return null;
			}
			assembledText += thisChar;
		}
		if( insertAngles ) {
			target.text = "\\\\ " + newText + " //";
		} else {
			target.text = newText;
		}
	}
	
	public char GetRandomChar() {
		return alphabet[Random.Range(0, alphabet.Length)];
	}

}

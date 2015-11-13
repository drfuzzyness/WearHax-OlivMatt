using UnityEngine;
using System.Collections;

public class MoveAroundTest : MonoBehaviour {

	// Use this for initialization
	public float speed=1f;
	public float walkingDuration;
	public float pauseDuration;
	public bool moving;

	public float timer;
	void Start () {
		timer = 0;
		moving = true;
	}
	
	// Update is called once per frame
	void Update () {

//		if( moving ) {
//			if( timer <= 0 ) {
//				if( Input.GetAxis ("Vertical") != 0 || Input.GetAxis ("Horizontal") != 0 ) {
//					timer = walkingDuration + pauseDuration;
//				}
//			} else if ( timer < pauseDuration ) {
//				// noting
//			} else  {
				transform.Translate(Vector3.forward*speed * Input.GetAxis ("Vertical") * Time.deltaTime
				                    + Vector3.right*speed * Input.GetAxis ("Horizontal") * Time.deltaTime);
//			}
//			timer -= Time.deltaTime;
//		}




	}

}

using UnityEngine;
using System.Collections;

public class KinectFistController : MonoBehaviour {

	public Transform leftFist;
	public Transform leftRoot;
	public Transform rightFist;
	public Transform rightRoot;

	public float smoothFactor = 5f;

	public float angleFlipAmt;
	public Vector3 angleFlipDirection;

	public bool flagDisconecction;

	private KinectManager kinectManager;
	private long kinectUserID;
	private Quaternion initialRotation;

	// Use this for initialization
	void Start () {
		initialRotation = transform.rotation;
	}
	
	// Update is called once per frame
	void Update () {
		// Get the KinectManager instance
		if(kinectManager == null)
		{
			kinectManager = KinectManager.Instance;
		}

		if( kinectManager.IsUserDetected() ) {
			UpdateArms();
			flagDisconecction = false;
		} else {
			flagDisconecction = true;
		}
	}

	private void UpdateArms() {
		kinectUserID = kinectManager.GetUserIdByIndex( 0 );

		Quaternion leftQuat = kinectManager.GetJointOrientation( kinectUserID, (int)KinectInterop.JointType.ElbowLeft, true );
		leftQuat = initialRotation * leftQuat;
		leftRoot.rotation = leftQuat;

		Quaternion rightQuat = kinectManager.GetJointOrientation( kinectUserID, (int)KinectInterop.JointType.ElbowRight, true );
		rightQuat = initialRotation * rightQuat * Quaternion.AngleAxis( angleFlipAmt, angleFlipDirection );

		rightRoot.rotation = rightQuat;
	}

}

using UnityEngine;
using System.Collections;

public class KinectFistController : MonoBehaviour {

	public Transform leftRoot;
	public Transform rightRoot;

	public float positionScale;
	public float smoothFactor;

	private float angleFlipAmt = 180f;
	private Vector3 angleFlipDirection = Vector3.up;

	public bool flagDisconection;

	private KinectManager kinectManager;
	private long kinectUserID;


	// Use this for initialization
	void Start () {
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
			flagDisconection = false;
		} else {
			flagDisconection = true;
		}
	}

	private void UpdateArms() {
		kinectUserID = kinectManager.GetUserIdByIndex( 0 );

		Vector3 rootPos = kinectManager.GetUserPosition( kinectUserID );

		Quaternion leftQuat = kinectManager.GetJointOrientation( kinectUserID, (int)KinectInterop.JointType.ElbowLeft, true );
		leftQuat = leftQuat;
		leftQuat = Quaternion.Slerp(leftRoot.localRotation, leftQuat, smoothFactor * Time.deltaTime);
		leftRoot.localRotation = leftQuat;

		Vector3 leftPos = kinectManager.GetJointPosition( kinectUserID, (int)KinectInterop.JointType.ElbowLeft );
		leftPos.z *= -1f;
		leftPos = ( ( leftPos ) * positionScale );
		leftPos = Vector3.Lerp(leftRoot.localPosition, leftPos, smoothFactor * Time.deltaTime);
		leftRoot.localPosition = leftPos;

		Quaternion rightQuat = kinectManager.GetJointOrientation( kinectUserID, (int)KinectInterop.JointType.ElbowRight, true );
		rightQuat = rightQuat * Quaternion.AngleAxis( angleFlipAmt, angleFlipDirection );
		rightQuat = Quaternion.Slerp(rightRoot.localRotation, rightQuat, smoothFactor * Time.deltaTime);
		rightRoot.localRotation = rightQuat;

		Vector3 rightPos = kinectManager.GetJointPosition( kinectUserID, (int)KinectInterop.JointType.ElbowRight );
		rightPos.z *= -1f;
		rightPos = ( ( rightPos ) * positionScale );
		rightPos = Vector3.Lerp(rightRoot.localPosition, rightPos, smoothFactor * Time.deltaTime);
		rightRoot.localPosition = rightPos;


	}

}

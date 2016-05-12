using UnityEngine;
using System.Collections;

public class KinectHeadTracker : MonoBehaviour {

	public bool enabled;
	private KinectManager kinman;


	// Use this for initialization
	void Start () {
		kinman = KinectManager.Instance;
	}
	
	// Update is called once per frame
	void Update () {
		if( enabled ) {
			transform.rotation = kinman.GetJointOrientation( kinman.GetPrimaryUserID(), (int) KinectInterop.JointType.SpineShoulder, true );
		}
	}
}

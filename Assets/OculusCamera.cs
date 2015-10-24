using UnityEngine;
using System.Collections;

public class OculusCamera : MonoBehaviour {

	// Use this for initialization
	public Vector3 pos;
	public GameObject anchorObj;
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
//		pos = UnityEngine.VR.InputTracking.GetLocalPosition (UnityEngine.VR.VRNode);
		transform.position = anchorObj.transform.position;
	}
}

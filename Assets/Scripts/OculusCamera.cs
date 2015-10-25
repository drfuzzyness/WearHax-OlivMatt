using UnityEngine;
using System.Collections;

public class OculusCamera : MonoBehaviour {

	// Use this for initialization
	public Vector3 pos;
	public float scalePositionalInput=5f;
	public GameObject anchorObj;
	public float startYRotation;
	public float anchorYRotation;
	public float rotScale=1f;
	void Start () {
		startYRotation = transform.rotation.eulerAngles.y;
	}
	
	// Update is called once per frame
	void Update () {
		anchorYRotation = anchorObj.transform.localRotation.y;
		if (anchorYRotation >= .3f){
			anchorYRotation.Remap(.3f,1f,0f,100f);
			transform.parent.Rotate (Vector3.up * -anchorYRotation * rotScale);
		}
				else if( anchorYRotation <= -.3f){
			anchorYRotation.Remap(-.3f,-1f,0f,-100f);
			transform.parent.Rotate (Vector3.up * -anchorYRotation * rotScale);
			}
//		pos = UnityEngine.VR.InputTracking.GetLocalPosition (UnityEngine.VR.VRNode);
		//transform.position = Vector3.zero + anchorObj.transform.localPosition.y * Vector3.up * scalePositionalInput;
//		transform.position = Vector3.zero + anchorObj.transform.localPosition * scalePositionalInput;
//		Vector3 tRot = transform.parent.rotation;
		//transform.parent.rotation = Quaternion.Euler ( startRotation + anchorObj.transform.localRotation.eulerAngles);
	}
}

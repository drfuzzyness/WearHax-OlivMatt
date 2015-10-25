using UnityEngine;
using System.Collections;

public class SpawnByDistance : MonoBehaviour {

	// Use this for initialization
	public float distSpawn=20f;
	public Transform player;
	public GameObject child;
	void Awake () {
		child = GetComponentInChildren<MoveFractures> ().gameObject;
		player = GameObject.Find ("PlayerHolder").transform;
		child.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		float distPlayer = Vector3.Distance (player.position, transform.position);
		if (distPlayer <= distSpawn && !child.activeSelf) {
			child.SetActive(true);

		}
	}
}

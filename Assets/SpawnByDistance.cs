using UnityEngine;
using System.Collections;

public class SpawnByDistance : MonoBehaviour {

	// Use this for initialization
	public float distSpawn=20f;
	public Transform player;
	public GameObject child;
    public Vector3 startPos;
	void Awake () {
        startPos = transform.position;
		child = GetComponentInChildren<MoveFractures> ().gameObject;
		player = GameObject.Find ("PlayerHolder").transform;
		child.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		float distPlayer = Vector3.Distance (player.position, startPos);
		if (distPlayer <= distSpawn) {
			child.SetActive(true);

		}
        else
        {
            child.SetActive(false);
        }
	}
}

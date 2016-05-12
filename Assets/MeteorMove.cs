using UnityEngine;
using System.Collections;

public class MeteorMove : MonoBehaviour {

    // Use this for initialization
    public bool isMoving;
    public float timeToImpact = 180f;
	void Start () {
        isMoving = false;
        
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    public void StartMeteor()
    {
        StartCoroutine("Go");
    }

    IEnumerator Go()
    {
        isMoving = true;
        float i = 0f;
        Vector3 startPos = transform.position;
        while (i <= 1f)
        {
            transform.position = Vector3.Lerp(startPos, Vector3.zero, i);
            i += Time.deltaTime / timeToImpact;
            yield return null;
        }
        GameManager.instance.Lose();
    }
}



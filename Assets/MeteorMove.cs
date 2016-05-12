using UnityEngine;
using System.Collections;

public class MeteorMove : MonoBehaviour {

    // Use this for initialization
    public float timeToImpact = 180f;
	void Start () {
        StartCoroutine("Go");
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    public void StartMeteor()
    {
  
    }

    IEnumerator Go()
    {
        float i = 0f;
        Vector3 startPos = transform.position;
        while (i <= 1f)
        {
            transform.position = Vector3.Lerp(startPos, Vector3.zero, i);
            i += Time.deltaTime / timeToImpact;
            yield return null;
        }
        //gameover
    }
}



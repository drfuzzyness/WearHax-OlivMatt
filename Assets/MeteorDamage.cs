using UnityEngine;
using System.Collections;

public class MeteorDamage : MonoBehaviour {

    // Use this for initialization
    public float burstSpeed = .05f;
    public AnimationCurve curve;
    public float currentScale=500f;
    public float scaleLoss = 30f;
    public float extraScale;
    public float scaleBoostAmount;
    Material mat;
    public float startScale;

    public int numHitPoints = 20;

    void Start () {
        startScale = transform.localScale.x;
   mat = GetComponent<MeshRenderer>().material;
    }
	
	// Update is called once per frame
	void Update () {

         
     
        transform.localScale = Vector3.Lerp(transform.localScale, Vector3.one * currentScale,.1f)+extraScale*Vector3.one;

        if (numHitPoints <= 0)
        {
            Kill();
        }
       
	}

    public void Kill()
    {
        GameManager.instance.Win();
    }
    public void MissileHit()
    {
        Debug.Log("hit");
        numHitPoints--;
        StartCoroutine("Hit");
        currentScale -= scaleLoss;
        mat.SetFloat("_shiny", transform.localScale.x.Remap(startScale, 50f, 3f, 15f));
    }

    IEnumerator Hit()
    {
        float startScale = transform.localScale.x;

        float i = 0f;
        while (i <= 1f)
        {

            i += burstSpeed;
            float val = curve.Evaluate(i);
            extraScale = val * scaleBoostAmount;
            mat.SetFloat("_node_8423", val / 2f + .05f);
            yield return null;
        }
        yield break;
    }


    void OnTriggerEnter(Collider col)
    {

        if (col.CompareTag("MeteorKill"))
        {
            Debug.Log("HitMeteor");
            //losestate
        }
  
    }
}

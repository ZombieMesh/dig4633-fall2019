using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Handletrigger : MonoBehaviour

{
    // Start is called before the first frame update'
    public GameObject finishedText;
    public void Handlesnap()
    {
        Debug.Log("snap");
        finishedText.SetActive(true);

    }

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}

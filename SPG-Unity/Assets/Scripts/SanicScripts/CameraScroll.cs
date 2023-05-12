using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScroll : MonoBehaviour
{
    private int _scrollSpeed = 2;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // R�cup�rez la position actuelle de la cam�ra
        Vector3 pos = transform.position;

        // D�placez la cam�ra vers le bas avec une vitesse de d�filement
        pos.y -= _scrollSpeed * Time.deltaTime;

        // D�finissez la nouvelle position de la cam�ra
        transform.position = pos;
    }
}

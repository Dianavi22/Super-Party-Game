using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FalleineController : MonoBehaviour
{

    public float speed = 50f; // vitesse de d�placement de la sph�re
    public float tilt = 2f; // facteur d'inclinaison du t�l�phone

    private Rigidbody rb; // r�f�rence au Rigidbody de la sph�re

    [SerializeField] GameObject _tutoCanvas;
    private bool _isTutoStart = false;
    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        _isTutoStart = true;

    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void FixedUpdate()
    {

        if (_isTutoStart)
        {
            _tutoCanvas.SetActive(true);
            Invoke("StopTutoCanvas", 3f);
            _isTutoStart = false;
        }


        float moveHorizontal = Input.acceleration.x; // r�cup�re l'inclinaison horizontale
        float moveVertical = Input.acceleration.y; // r�cup�re l'inclinaison verticale

        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);

        rb.AddForce(movement * speed); // applique la force pour faire rouler la sph�re

        // Inclinaison de la sph�re
        Vector3 tiltVector = new Vector3(moveVertical * tilt, 0f, -moveHorizontal * tilt);
        Quaternion targetRotation = Quaternion.FromToRotation(transform.right, tiltVector);
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation * transform.rotation, Time.deltaTime * 10);
    }

    private void StopTutoCanvas()
    {
        _tutoCanvas.SetActive(false);

    }
}

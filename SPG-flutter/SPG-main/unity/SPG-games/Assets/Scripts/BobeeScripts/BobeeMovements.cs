using UnityEngine;

public class BobeeMovements : MonoBehaviour
{
    public CharacterController controller;
    public float speed = 6f;

    private void Update()
    {
        float horizontal = Input.GetAxisRaw("Horizontal");
        float vertical = Input.GetAxisRaw("Vertical");
        Vector3 dir = new Vector3(horizontal, 0f, vertical).normalized;
        if (dir.magnitude >= 0.1f) 
        {
            controller.Move(dir * speed * Time.deltaTime);
        }
    }


}

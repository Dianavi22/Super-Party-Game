using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FalleineCamera : MonoBehaviour
{
    public Transform target; // L'objet que la cam�ra doit suivre
    public float smoothSpeed = 0.140f; // Vitesse de suivi de la cam�ra
    public Vector3 offset; // Offset de la cam�ra par rapport � l'objet
    public float distance = 5f; // Distance de la cam�ra � la cible

    void LateUpdate()
    {
        if (target != null && target.gameObject.activeSelf)
        {
            Vector3 targetPosition = target.position + offset;
            targetPosition.y = transform.position.y;

            Vector3 newPosition = Vector3.Lerp(transform.position, targetPosition, smoothSpeed);
            Vector3 direction = newPosition - target.position;
            Vector3 flatDirection = Vector3.ProjectOnPlane(direction, Vector3.up);
            flatDirection.x = 0f;
            newPosition = target.position + Vector3.ClampMagnitude(flatDirection, distance);

            // Fixer l'axe Y et l'axe Z de la cam�ra
            newPosition.x = 1.23f;
            newPosition.z = -32.29f;

            transform.position = newPosition;
        }
    }
}

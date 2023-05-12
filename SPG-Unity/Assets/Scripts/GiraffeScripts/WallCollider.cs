using UnityEngine;

public class WallCollider : MonoBehaviour
{
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            print("Collision enter !!!");
            Rigidbody playerRigidbody = collision.gameObject.GetComponent<Rigidbody>();
            playerRigidbody.velocity = Vector3.zero; // Annule la v�locit� du joueur pour l'immobiliser
            playerRigidbody.angularVelocity = Vector3.zero; // Annule la v�locit� angulaire pour �viter toute rotation
        }
    }
}

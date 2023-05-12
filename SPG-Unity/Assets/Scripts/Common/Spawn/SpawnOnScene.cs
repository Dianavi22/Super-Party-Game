using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnOnScene : MonoBehaviour
{
    [SerializeField] public int intervalSpawnInTheGame;

    public static SpawnOnScene instance;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("Il existe d�j� une instance de SpawnOnScene dans la sc�ne");
            return;
        }
        instance = this;
    }
}

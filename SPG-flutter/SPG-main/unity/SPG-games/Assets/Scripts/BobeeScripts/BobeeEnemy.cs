using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class BobeeEnemy : ObjectsToSpawn
{
    [SerializeField] private Transform _target;
    public float speed = 5f;
    [SerializeField] private float lifeTime = 30;
    [SerializeField] private float currentLife;
    // public NavMeshAgent enemy;

    void Start()
    {
        currentLife = 0;
        InvokeRepeating("UpdateSpawn", 0f, 0.5f);
        _target = GameObject.Find("Bobee").transform;
    }

    void Update()
    {
        if (_target == null)
        {
            return;
        }
        // enemy.SetDestination(_target.position);

        Vector3 dir = _target.position - transform.position;
        transform.Translate(dir.normalized * speed * Time.deltaTime, Space.World);
        if (currentLife > lifeTime)
        {
            EnemyDeath();
        }
    }

    void UpdateSpawn()
    {
        currentLife++;
    }

    void EnemyDeath()
    {
        Destroy(gameObject);
    }
}

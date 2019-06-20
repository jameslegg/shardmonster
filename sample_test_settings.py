CONN1 = {
    'uri': 'mongodb://controller:27017/?replicaSet=controller-1',
    'db_name': 'test_sharding'
}
CONN2 = {
    'uri': 'mongodb://mongos:27017/replicaSet=replica-1',
    'db_name': 'test_sharding'
}
CONTROLLER = {
    'uri': 'mongodb://controller:27017/?replicaSet=controller-1',
    'db_name': 'test_metadata'
}


# Controls how many test runs of each size we do during integration tests.
INTEGRATION_TEST_RUNS = (
    [10] * 2 +
    [100] * 0 +
    [1000] * 0 +
    [10000] * 0 +
    [100000] * 0
)

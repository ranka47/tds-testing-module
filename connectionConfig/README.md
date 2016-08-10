Parameters: 

**HOSTNAME_TXNL** : IP Address or hostname of transactional data store

**HOSTNAME_SECONDARY** : IP Address or hostname of secondary (archival) data store

**DRIVER_CLASS** : Name of the class of the driver being used to connect

[txnlConfig.jmx](https://github.com/ranka47/tds-testing-module/blob/master/connectionConfig/txnlConfig.jmx)

Configuration element parameterised to connect to transactional data store as a whole with no specific tablet type specified.  

[secConfig.jmx](https://github.com/ranka47/tds-testing-module/blob/master/connectionConfig/secConfig.jmx)

Configuration element parameterised to connect to secondary data store.   

[masterConfig.jmx](https://github.com/ranka47/tds-testing-module/blob/master/connectionConfig/masterConfig.jmx)

Configuration element parameterised to connect to master shards of each cluster.  

[replicaConfig.jmx](https://github.com/ranka47/tds-testing-module/blob/master/connectionConfig/replicaConfig.jmx)

Configuration element parameterised to connect to replica shards in each cluster.

**Note** : You cannot specify which replica shard it will make a connection to. 


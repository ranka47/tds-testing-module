# Plugin-Modules
### `prepPhase.jmx`
It implements all the necessary logic required to extract relevant information from VSchema, establish connection and collect MetaData for the tables (either specified or all) and store them in a structured form so that it can be easily used in any testcase required. 

### `bulkInsert.jmx`
Specifying the number of rows and number of threads you can create your dataset for testing purposes through bulk insertion.

### `clearTxnl.jmx`
In case of functional testing while in INSERT PHASE a test dataset is generated for the specified tables. To revert back to the original state before the execution of the test module, this can be used to clear out the Transactional Data Store. Also sometimes stale entries remain in the Secondary Data Store and VTGate hence that can also be cleared. 

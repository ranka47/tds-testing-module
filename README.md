# tds-testing-module
### Functional Testing Modules
======
#### TestCase 1 (`selectReturnNEquals.jmx`):
Contains testing of `select` statements with specified return columns (columns user requires to be seen in output). It also includes testing of `select` statements along with `where` clause containing equality **=** condition conjuncted by **AND** operator. 

#### TestCase 2 (`selectWhereOperators.jmx`): 
Contains testing of `select` statements in which user can choose among the following operators: 
  * **IN**
  * **<=**
  * **NOT IN**
  * **!=**
  
  Also these operators can be conjuncted by user specified conjunction operator (**AND**, **OR**). In this testcase user can also specify the column type on which these operators will be applicable.    

#### TestCase 3 (`insertColList.jmx`): 
Contains testing of `insert` statements in which user can give input of columns types that needs to be ignored while inserting a row. A random column is selected of that type and is ignored while automatically generating the insert query. The following are the column types: 
  * **autoIncrement** : Columns that have the property of auto increment. 
  NOTE: It does not imply those columns who have AUTO_INCREMENT as its attribute while declaring the table. It refers to the column whose auto increment operation has been implemented using sequencing.
  * **nullable** : Columns that can accept NULL values. 
  * **default** : Columns for which default value has been assigned. 

#### TestCase 4 (`funcDeleteWhereEquality.jmx`): 
Contains testing of `delete` statements in which user can give input of columns types using which the delete statements is to be generated and the row to be deleted is to be selected. The following are the column types: 
  * **sk** : Sharding Key. 
  * **pk** : Primary Key. 
  * **vindexUnique** : Columns for which vindexes are defined and are supposed to have unique values. 

#### TestCase 5 (`funcUpdate.jmx`): 
Contains testing of `update` statements in which user can give input of columns types whose values need to be updated. The following are the column types: 
  * **sk** : Sharding Key. 
  * **pk** : Primary Key. 
  * **vindexUnique** : Columns for which vindexes are defined and are supposed to have unique values. 
  * **secIndex** : Columns on which secondary indexes has been defined using DDL. 
  * **nonIndex** : Any other column than the above.

#### TestCase 6 (`generalQuery.jmx`): 
This is the last functional testing module and is generalised to accomodate any type of `select` query. It requires input of a file with all the queries that require testing.

***

### Performance Testing Modules
======

After specifying the number of threads using `Dthreads=#` and number of queries to be fired `Ddatasize=#` we can run the performance testing

#### TestCase 1 (`perfSelect.jmx`):
Performance testing module for `select` statements.

#### TestCase 2 (`perfInsert.jmx`):
Performance testing module for `insert` statements.

#### TestCase 3 (`perfDelete.jmx`):
Performance testing module for `delete` statements.

#### TestCase 4 (`perfUpdate.jmx`):
Performance testing module for `update` statements.

***

`modules/` : Contains all the modules that can be plugged in any custom test case for their required purpose. 
`connectionConfig/` : Contains all the connection elements. Can be plugged in any custom test cases to be used to establish connection
`testCases/` : 
`tmp/` : Not in the repository but gets formed while executing a testcase. It contains all the intermediate files that are formed during the execution of the testcase.
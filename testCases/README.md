# tds-testing-module
## Test Cases Format
### Functional Testing Modules

======
#### TestCase 1 (`selectReturnNEquals.jmx`):
`<Name of the table>;<Column Names separated with comma>;<Columns need to be returned>`

First parameter specifies the name of the table for which this test case has been defined. 
Second parameter defines the columns on the basis of which the where clause will be generated randomly.
Third parameter specifies the name of the columns that will be returned after the `select` query completes execution.

#### TestCase 2 (`selectWhereOperators.jmx`): 
`<Column Type>,<Type of operator>,<Conjunction clause **(if required)**>,<Column Type>, ...`

This testcase deals with different operators. You need to specify a column type for which you want to test a type of operator. If you want to use conjunctions like **AND** or **OR** then you just need to specify it between the two column types. 

As operators of a type like **range** depend on the data type of the column hence you need to specify the operator type instead of the operator itself. Following are the options the user can choose: 
  * `range` : **<=** for INTEGER, **LIKE** for STRING, **BETWEEN** for DATETIME
  * `notEqual` : **NOT LIKE** for STRING, **!=** for the rest   
  * `in` : **IN** tuple clause
  * `notIn` : **NOT IN** tuple clause

NOTE: **=** is not covered in this testcase as it already gets tested in the TestCase1

#### TestCase 3 (`insertColList.jmx`): 
Specify comma separated column properties basis on which you want to ignore columns while generating `insert` queries.

Eg: `autoIncrement,nullable,default`
All those columns which hold at least one of these properties won't be included while generating the insert query.

#### TestCase 4 (`funcDeleteWhereEquality.jmx`): 
Specify comma separated column types basis on which you want to generate `delete` queries.

#### TestCase 5 (`funcUpdate.jmx`): 
`<Comma separated column types which need to be updated>;<Comma separated column types basis on which need to be filtered>`

#### TestCase 6 (`generalQuery.jmx`): 
In this testcase input will be a file containing exact `select` queries that you need to test. 
As there is syntax difference while querying to Vitess and HBase you need to give two input files. One to query Transactional Data Store and other for Secondary Data Store.

***

### Performance Testing Modules
======

#### TestCase 1 (`perfSelect.jmx`):
`<Column Type>;<Conjunction>;<Column Type>;<Conjunction>; ...`
Specify column types and the conjunctions that you want to use between them with semi-colon as separator. It will generate query by randomly choosing a column of that type and joining all such clauses with the appropriate conjunctions. 

#### TestCase 3 (`perfDelete.jmx`):
Same as TestCase 1.

#### TestCase 4 (`perfUpdate.jmx`):
`<Expression Type>;<Comma Separated column types to be updated>;<Comma separated column types for filtering>`
Options for expression type:
  * `constant` : It will assign a value for the column
  * `expression` : It will create an expression for the column

It will create appropriate expression for all the column types that have been specified for updation. 
**NOTE**: It will create same expression type for all the column types.
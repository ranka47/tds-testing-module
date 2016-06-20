SELECT * FROM test_one
SELECT * FROM test_one LIMIT 1000
SELECT * FROM test_one LIMIT 1000 offset 10
SELECT * FROM test_one WHERE pk=1 
SELECT * FROM test_one WHERE pk=1 limit 10
SELECT * FROM test_one WHERE sk=1 
SELECT * FROM test_one WHERE sk=1 limit 10
SELECT * FROM test_one WHERE vindex=1 
SELECT * FROM test_one WHERE sec_index=1
SELECT * FROM test_one WHERE non_index=1 
SELECT * FROM test_one WHERE sk=1 and pk=1 
SELECT * FROM test_one WHERE sk=1 and vindex=1 
SELECT * FROM test_one WHERE sk=1 and vindex=1 and pk=1 
SELECT * FROM test_one WHERE sk=1 and non_index=1 
SELECT * FROM test_one where pk <= 1 or sk != 1
SELECT * FROM test_one where non_index <= 1 and sk != 1
SELECT * FROM test_one where non_index <= 1 or non_index != 1
SELECT * FROM test_one where pk <= 1 AND vindex IN (1,2)
SELECT * FROM test_one where pk <= 1 AND non_index IN (1,2)
SELECT * FROM test_one where pk <= 1 AND sec_index NOT IN (1,2)
SELECT * FROM test_one where pk <= 1 AND non_index NOT IN (1,2)
SELECT * FROM test_one WHERE vindex<1
SELECT * FROM test_one WHERE sec_index<1
SELECT * FROM test_one WHERE non_index<1
SELECT * FROM test_one where sec_index NOT IN (1,2)
SELECT * FROM test_one where non_index NOT IN (1,2)
SELECT * FROM test_one ORDER BY pk <= 1 AND sec_index NOT IN (1,2)
SELECT * FROM test_one ORDER BY non_index
SELECT * FROM test_one ORDER BY pk
SELECT * FROM test_one ORDER BY sk
SELECT * FROM test_one ORDER BY vindex 
SELECT * FROM test_one ORDER BY sec_index
SELECT COUNT(*) FROM test_one GROUP BY non_index 
SELECT COUNT(*) FROM test_one GROUP BY pk
SELECT COUNT(*) FROM test_one GROUP BY sk
SELECT COUNT(*) FROM test_one GROUP BY vindex
SELECT COUNT(*) FROM test_one GROUP BY sec_index
SELECT AVG(pk) FROM test_one GROUP BY non_index 
SELECT AVG(pk) FROM test_one GROUP BY pk 
SELECT AVG(pk) FROM test_one GROUP BY sk 
SELECT AVG(pk) FROM test_one GROUP BY vindex 
SELECT AVG(pk) FROM test_one GROUP BY sec_index
SELECT AVG(non_index) FROM test_one GROUP BY non_index 
SELECT AVG(non_index) FROM test_one GROUP BY pk 
SELECT AVG(non_index) FROM test_one GROUP BY sk 
SELECT AVG(non_index) FROM test_one GROUP BY vindex 
SELECT AVG(non_index) FROM test_one GROUP BY sec_index
SELECT DISTINCT(pk) FROM test_one GROUP BY non_index 
SELECT DISTINCT(pk) FROM test_one GROUP BY pk 
SELECT DISTINCT(pk) FROM test_one GROUP BY sk 
SELECT DISTINCT(pk) FROM test_one GROUP BY vindex 
SELECT DISTINCT(pk) FROM test_one GROUP BY sec_index
SELECT DISTINCT(non_index) FROM test_one GROUP BY non_index 
SELECT DISTINCT(non_index) FROM test_one GROUP BY pk 
SELECT DISTINCT(non_index) FROM test_one GROUP BY sk 
SELECT DISTINCT(non_index) FROM test_one GROUP BY vindex 
SELECT DISTINCT(non_index) FROM test_one GROUP BY sec_index
SELECT pk FROM test_one WHERE pk=1
SELECT pk FROM test_one WHERE sk=1
SELECT pk FROM test_one WHERE vindex=1
SELECT pk FROM test_one WHERE sec_index=1
SELECT pk FROM test_one WHERE non_index=1
SELECT sk FROM test_one WHERE pk=1
SELECT sk FROM test_one WHERE sk=1
SELECT sk FROM test_one WHERE vindex=1
SELECT sk FROM test_one WHERE sec_index=1
SELECT sk FROM test_one WHERE non_index=1
SELECT sec_index FROM test_one WHERE pk=1
SELECT sec_index FROM test_one WHERE sk=1
SELECT sec_index FROM test_one WHERE vindex=1
SELECT sec_index FROM test_one WHERE sec_index=1
SELECT sec_index FROM test_one WHERE non_index=1
SELECT vindex FROM test_one WHERE pk=1
SELECT vindex FROM test_one WHERE sk=1
SELECT vindex FROM test_one WHERE vindex=1
SELECT vindex FROM test_one WHERE sec_index=1
SELECT vindex FROM test_one WHERE non_index=1
SELECT non_index FROM test_one WHERE pk=1
SELECT non_index FROM test_one WHERE sk=1
SELECT non_index FROM test_one WHERE vindex=1
SELECT non_index FROM test_one WHERE sec_index=1
SELECT non_index FROM test_one WHERE non_index=1
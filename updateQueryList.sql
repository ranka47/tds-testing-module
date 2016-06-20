INSERT INTO test_one (pk,sk,vindex,sec_index,non_index,increment,nullable,def_col) VALUES ('1235','1','10','1','1','1','1','1')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index,increment,def_col) VALUES ('4','1','11','1','1','10','1')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index,increment,nullable) VALUES ('3','1','14','1','1','14','1')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index,nullable,def_col) VALUES ('5','1','17','1','1','1','1')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index) VALUES ('1234','1','16','1','1')
INSERT INTO test_one VALUES ('0','0','0','0','0')
INSERT INTO test_two (pk,sk,vindex,sec_index,non_index) VALUES ('2','2','2','2','2')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index) VALUES ('10','10','10','10','10'),('20','20','20','20','20')
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index) SELECT pk,sk,vindex,sec_index,non_index FROM test_two
INSERT INTO test_one (pk,sk,vindex,sec_index,non_index) VALUES ('20','20','20','20','20') ON DUPLICATE KEY UPDATE sk=3
UPDATE test_one SET sk='1' 
UPDATE test_one SET sk=sk+1 
UPDATE test_one SET sk=sk + pk 
UPDATE test_one SET vindex=1 
UPDATE test_one SET vindex=vindex + 1 
UPDATE test_one SET vindex=vindex + pk + non_index 
UPDATE test_one SET sec_index=1 
UPDATE test_one SET sec_index=sec_index + 1 
UPDATE test_one SET sec_index=vindex + pk 
UPDATE test_one SET non_index=1 
UPDATE test_one SET non_index=non_index + 1 
UPDATE test_one SET non_index=pk + sk + vindex 
UPDATE test_one SET pk=pk+100, sk=1 
UPDATE test_one SET pk=pk+100, vindex=1 
UPDATE test_one SET pk=pk+100, non_index=1 
UPDATE test_one SET sk=pk+1000 WHERE pk=1
UPDATE test_one SET sk=9 WHERE vindex=1
UPDATE test_one SET sk=11 WHERE non_index=1
UPDATE test_one,test_two SET test_one.pk=test_one.pk+45 WHERE test_two.pk=2
UPDATE test_one,test_two SET test_two.vindex=1 WHERE test_two.pk=test_two.pk
UPDATE test_one,test_two SET test_one.sk=1 WHERE test_one.non_index=1
UPDATE test_one,test_two SET test_two.sec_index=1 WHERE test_two.vindex=test_one.non_index + test_two.vindex
UPDATE test_one,test_two SET test_one.non_index=1 WHERE test_one.non_index=4
UPDATE test_one,test_two SET test_two.sk=test_one.non_index WHERE 1!=1
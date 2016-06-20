runsheet~constant;nonIndex;sk~update runsheet set deliverydate='1970-01-01 00:00:00' where runsheetid=0  
runsheet~constant;nonIndex;sk~update runsheet set deliverydate='1970-01-01 00:00:00' where runsheetid=1  
runsheet~constant;nonIndex;sk~update runsheet set deliverydate='1970-01-01 00:00:00' where runsheetid=2  
shipment~constant;nonIndex;sk~update shipment set isactive=2 where shipmentid=0  
shipment~constant;nonIndex;sk~update shipment set isactive=2 where shipmentid=1  
shipment~constant;nonIndex;sk~update shipment set isactive=2 where shipmentid=2  
test_one~constant;nonIndex;sk~update test_one set def_col=1000 where sk=0  
test_one~constant;nonIndex;sk~update test_one set def_col=1000 where sk=1  
test_one~constant;nonIndex;sk~update test_one set def_col=1000 where sk=2  
test_one~constant;secIndex;vindexUnique~update test_one set sec_index_unique=1000 where vindex_unique=0  
test_one~constant;secIndex;vindexUnique~update test_one set sec_index_unique=1000 where vindex_unique=1  
test_one~constant;secIndex;vindexUnique~update test_one set sec_index_unique=1000 where vindex_unique=2  
shipment~expression;nonIndex;sk~update shipment set isactive=isactive+2 where shipmentid=0  
shipment~expression;nonIndex;sk~update shipment set isactive=isactive+2 where shipmentid=1  
shipment~expression;nonIndex;sk~update shipment set isactive=isactive+2 where shipmentid=2  
test_one~expression;nonIndex;sk~update test_one set def_col=def_col+1000 where sk=0  
test_one~expression;nonIndex;sk~update test_one set def_col=def_col+1000 where sk=1  
test_one~expression;nonIndex;sk~update test_one set def_col=def_col+1000 where sk=2  

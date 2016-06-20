create table shipment (shipmentid bigint(20) not null, trackingid varchar(15) default null, createdatetime datetime default current_timestamp,isactive tinyint(1) not null default 0, primary key (shipmentid));
create table runsheet (runsheetid bigint(20) not null, createdatetime datetime default current_timestamp, isactive tinyint(1) not null default 1, deliverydate datetime default null, primary key (runsheetid));
create table runsheet_shipments(runsheetid bigint(20), shipmentid bigint(20), primary key(runsheetid, shipmentid));
create table shipment_address (shipmentid bigint(20) not null, addressid bigint(20) not null, primary key(shipmentid, addressid));
create table dummy (shipmentid varchar(20), trackingid varchar(15) default null, createdatetime datetime default current_timestamp, primary key (shipmentid));
create table test_one(pk INT NOT NULL, sk INT NOT NULL, vindex INT NOT NULL, sec_index INT NOT NULL, non_index INT NOT NULL, increment INT NOT NULL, nullable INT NULL, def_col INT NOT NULL DEFAULT 0,PRIMARY KEY(pk));
create table test_two(pk INT NOT NULL, sk INT NOT NULL, vindex INT NOT NULL, sec_index INT NOT NULL, non_index INT NOT NULL, increment INT NOT NULL, nullable INT NULL, def_col INT NOT NULL DEFAULT 0,PRIMARY KEY(pk));
create index sec_index_one on test_one(sec_index);
create index sec_index_two on test_two(sec_index);
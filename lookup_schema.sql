create table shipment_idx(id bigint,next_id bigint,cache bigint,increment bigint, primary key(id)) comment 'vitess_sequence';
create table tracking_shipment_idx(trackingid varchar(15), shipmentid bigint(20), primary key(trackingid));
create table date_shipment_idx(createdatetime datetime, shipmentid bigint(20), primary key(createdatetime, shipmentid));
create table runsheet_idx(id bigint, next_id bigint, cache bigint, increment bigint, primary key(id)) comment 'vitess_sequence';
create table date_runsheet_idx(createdatetime datetime, runsheetid bigint(20), primary key(createdatetime, runsheetid));
create table vindex_one(vindex int not null, sk int not null, PRIMARY KEY(vindex, sk));
create table vindex_two(vindex int not null, sk int not null, PRIMARY KEY(vindex, sk));
create table test_one_idx(id bigint,next_id bigint,cache bigint,increment bigint, primary key(id)) comment 'vitess_sequence';
create table test_two_idx(id bigint,next_id bigint,cache bigint,increment bigint, primary key(id)) comment 'vitess_sequence';
USE world;
ALTER TABLE City DROP FOREIGN KEY city_ibfk_1;
ALTER TABLE City Engine=TokuDB;
ALTER TABLE City ROW_FORMAT=TOKUDB_ZLIB;
OPTIMIZE TABLE City;
SHOW CREATE TABLE City;
ALTER TABLE City ROW_FORMAT=TOKUDB_QUICKLZ;
OPTIMIZE TABLE City;
SHOW CREATE TABLE City;
ALTER TABLE City ROW_FORMAT=TOKUDB_LZMA;
OPTIMIZE TABLE City;
SHOW CREATE TABLE City;
ALTER TABLE City ROW_FORMAT=TOKUDB_SNAPPY;
OPTIMIZE TABLE City;
SHOW CREATE TABLE City;
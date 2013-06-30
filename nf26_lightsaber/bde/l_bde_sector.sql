DROP TABLE l_bde_sector;

CREATE TABLE l_bde_sector (
  planet VARCHAR(50),
  sector VARCHAR(9)
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY nf26p024lightsaberdatafile
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline
SKIP 1
characterset UTF8
BADFILE nf26p024lightsabertmp:'sector.csv.bad'
LOGFILE nf26p024lightsabertmp:'sector.csv.log'
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('Sector'))
REJECT LIMIT UNLIMITED;


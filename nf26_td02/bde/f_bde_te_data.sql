DROP TABLE f_bde_te_data;

CREATE TABLE f_bde_te_data (
  magasin VARCHAR(4),
  date_data CHAR(10),
  isbn VARCHAR(13)
)
ORGANIZATION EXTERNAL
(TYPE ORACLE_LOADER
DEFAULT DIRECTORY nf26p024datafile
ACCESS PARAMETERS
(
RECORDS DELIMITED BY newline
SKIP 1
characterset UTF8
BADFILE nf26p024tmp:'data.csv.bad'
LOGFILE nf26p024tmp:'data.csv.log'
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
)
LOCATION ('data.csv'))
REJECT LIMIT UNLIMITED;


SELECT * FROM f_bde_te_data WHERE rownum<=10;
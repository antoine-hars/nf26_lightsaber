-- script /volsme/user1x/uvs/nf26/nf26p024/Desktop/td03/scripts/exportCsv.sql
SET HEADING OFF
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET ECHO OFF
SET PAGESIZE 0
SPOOL /volsme/user1x/uvs/nf26/nf26p024/Desktop/td03/out.dat
SELECT '"' || sem || '";"' || total || '"' FROM total_ventes_semaine ;
SPOOL OFF
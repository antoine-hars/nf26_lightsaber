CREATE OR REPLACE TYPE ddate AS OBJECT (
date_data CHAR(10),

MEMBER FUNCTION getDat RETURN DATE,
MEMBER FUNCTION getJds RETURN VARCHAR2,
MEMBER FUNCTION getSem RETURN NUMBER,
MEMBER FUNCTION getMon RETURN NUMBER,
MEMBER FUNCTION getTri RETURN NUMBER
);
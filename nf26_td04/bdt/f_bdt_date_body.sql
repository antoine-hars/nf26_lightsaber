CREATE OR REPLACE TYPE BODY ddate 
IS

MEMBER FUNCTION getDat RETURN DATE
IS
BEGIN
  RETURN TO_DATE(date_data, 'yyyy-mm-dd');
END;

MEMBER FUNCTION getJds RETURN VARCHAR2
IS
BEGIN
  RETURN TO_CHAR(self.getDat(),'day');
END;

MEMBER FUNCTION getSem RETURN NUMBER
IS
BEGIN
  RETURN TO_CHAR(self.getDat(),'ww');
END;

MEMBER FUNCTION getMon RETURN NUMBER
IS
BEGIN
  RETURN TO_CHAR(self.getDat(),'mm');
END;

MEMBER FUNCTION getTri RETURN NUMBER
IS
BEGIN
  RETURN CEIL(TO_CHAR(self.getDat(),'mm') / 3);
END;

END;
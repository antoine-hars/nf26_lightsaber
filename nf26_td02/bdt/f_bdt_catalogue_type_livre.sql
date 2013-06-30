CREATE OR REPLACE TYPE livre AS OBJECT (
isbn CHAR(13),
titre VARCHAR2(255),
auteur VARCHAR2(255),
langue CHAR(3),
publication VARCHAR2(50),
editeur VARCHAR2(255),
genre VARCHAR2(255),
MEMBER FUNCTION getIsbn RETURN varchar2,
MEMBER FUNCTION getTitre RETURN varchar2,
MEMBER FUNCTION getAuteur RETURN varchar2,
MEMBER FUNCTION getLangue RETURN varchar2,
MEMBER FUNCTION getPublication RETURN char,
MEMBER FUNCTION getEditeur RETURN varchar2,
MEMBER FUNCTION getGenre RETURN varchar2
);
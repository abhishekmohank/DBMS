1.
CREATE VIEW VW_emp AS
SELECT * FROM employees;

CREATE VIEW VW_SSN AS
SELECT SuperSSN,Dno FROM employees WHERE sex="Female";

UPDATE VW_emp SET address="Chennai"
WHERE ssn=10;
SELECT * FROM VW_emp;

DROP VIEW VW_emp;
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    department_name IN VARCHAR2,
    bonus_percentage IN NUMBER
)
IS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * bonus_percentage / 100)
    WHERE Department = department_name;

    COMMIT;
END;
/

BEGIN
    UpdateEmployeeBonus('HR',10);
END;
/

SELECT * FROM Employees;
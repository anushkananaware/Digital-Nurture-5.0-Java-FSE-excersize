SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE TransferFunds(
    source_account IN NUMBER,
    destination_account IN NUMBER,
    transfer_amount IN NUMBER
)
IS
    source_balance NUMBER;
BEGIN
    SELECT Balance
    INTO source_balance
    FROM BankAccounts
    WHERE AccountID = source_account;

    IF source_balance >= transfer_amount THEN

        UPDATE BankAccounts
        SET Balance = Balance - transfer_amount
        WHERE AccountID = source_account;

        UPDATE BankAccounts
        SET Balance = Balance + transfer_amount
        WHERE AccountID = destination_account;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;
END;
/

BEGIN
    TransferFunds(1001,1002,5000);
END;
/

SELECT * FROM BankAccounts;
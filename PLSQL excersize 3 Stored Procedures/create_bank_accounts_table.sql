CREATE TABLE BankAccounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER
);

INSERT INTO BankAccounts VALUES (1001,'Anushka',20000);
INSERT INTO BankAccounts VALUES (1002,'Rahul',15000);

COMMIT;
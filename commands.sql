--Let's drop & create the table
DROP TABLE IF EXISTS fibonacci;
CREATE TABLE fibonacci (
    number UNSIGNED BIG INT
);

--The setup, let's add two 1 inside the table, as a starting point for the sequence
INSERT INTO fibonacci VALUES (1);
INSERT INTO fibonacci VALUES (1);

--we insert the sum of a select that return the biggest 2 number in the table.
INSERT INTO fibonacci VALUES ((
        SELECT SUM(number) FROM(
            SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2
        ) 
    ) 
);

--Now let's call it a few times
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );
INSERT INTO fibonacci VALUES ((SELECT SUM(number) FROM(SELECT number FROM fibonacci ORDER BY number DESC LIMIT 2 ) ) );

--Display
SELECT * FROM fibonacci;
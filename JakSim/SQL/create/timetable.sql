DROP TABLE TIMETABLE;

CREATE TABLE TIMETABLE(
    T_IDX INT(8) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    USER_ID VARCHAR(30) NOT NULL,
    T_DATE DATE NOT NULL,
    T_TYPE INT(1) NOT NULL DEFAULT '0',
    T_START_T TIME NOT NULL,
    T_END_T TIME NOT NULL,
    T_PEOPLE INT(3) NOT NULL DEFAULT '1',
    FOREIGN KEY (USER_ID) REFERENCES USER_INFO(USER_ID) ON DELETE CASCADE
);

COMMIT;

INSERT INTO TIMETABLE
VALUES(NULL, 'angel2', '2023-07-22', '2', '09:00', '10:00', '5');
INSERT INTO TIMETABLE
VALUES(NULL, 'angel2', '2023-07-22', '2', '10:00', '11:00', '2');
INSERT INTO TIMETABLE
VALUES(NULL, 'angel2', '2023-07-22', '1', '14:00', '15:00', '1');
INSERT INTO TIMETABLE
VALUES(NULL, 'angel2', '2023/07/31', '0', '11:00', '12:00', '1');

COMMIT;
DROP TABLE PAYMENT;

CREATE TABLE PAYMENT(
                        P_IDX INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                        USER_ID VARCHAR(30) NOT NULL,
                        TP_IDX INT(8) NOT NULL,
                        P_C_DT DATE NOT NULL DEFAULT CURRENT_DATE,
                        P_REFUND INT(1) NOT NULL DEFAULT 0,
                        P_M_DT DATE,
                        P_PT_CNT INT(3) NOT NULL,
                        P_PT_PERIOD INT(2) NOT NULL,
                        FOREIGN KEY (USER_ID) REFERENCES USER_INFO(USER_ID) ON DELETE CASCADE,
                        FOREIGN KEY (TP_IDX) REFERENCES PRODUCT(TP_IDX) ON DELETE CASCADE
);

COMMIT;

<<<<<<< HEAD
INSERT INTO PAYMENT (USER_ID, TP_IDX, P_PT_CNT, P_PT_PERIOD, P_REFUND)
VALUES ('ujeong', 2, 3, 3, 0);

INSERT INTO PAYMENT (USER_ID, TP_IDX, P_PT_CNT, P_M_DT, P_PT_PERIOD, P_REFUND)
VALUES ('wkdgyfla97', 1, 1, '2023/06/17' , 4, 6);
=======
--INSERT INTO PAYMENT (USER_ID, TP_IDX, P_PT_CNT, P_REFUND)
--VALUES ('ujeong', 0, 3, 0);  -- Assuming you want to insert 0 for P_REFUND

INSERT INTO PAYMENT (USER_ID, TP_IDX, P_PT_CNT, P_M_DT, P_REFUND)
VALUES ('wkdgyfla97', 1, 1, '2023/06/17' ,6);
>>>>>>> 0dcc39d6397c6ad07cf56efcb462bf426b1f7650
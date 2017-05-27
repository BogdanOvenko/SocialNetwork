CREATE TABLE MESSAGE (
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  sender BIGINT NOT NULL,
  recipient BIGINT NOT NULL,
  text VARCHAR2(4000),
  FOREIGN KEY (sender) REFERENCES USERS(id),
  FOREIGN KEY (recipient) REFERENCES USERS(id),
  check (sender != recipient)
);
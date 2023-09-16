CREATE TABLE users (
	id INTEGER NOT NULL,
	name VARCHAR(30) NOT NULL,
	username VARCHAR,
	PRIMARY KEY (id),
	UNIQUE (name)
);

CREATE TABLE addresses (
    id INTEGER NOT NULL,
    email VARCHAR NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(user_id) REFERENCES users (id)
);

INSERT INTO users (name, username) VALUES ('Bob White', 'bob');

INSERT INTO users (name, username) VALUES ('John Smith', 'john')
INSERT INTO addressses (email, user_id)
VALUES ('john@example.com', 2), ('john@example.com.gov', 2)
RETURNING id;

INSERT INTO addresses (email, user_id)
VALUES ('bob@example.com', 1);

DROP TABLE IF EXISTS regioncodes;
CREATE TABLE regioncodes (
    name VARCHAR(255),
    code INT PRIMARY KEY
);

DROP TABLE IF EXISTS jobcodes;
CREATE TABLE jobcodes (
    name VARCHAR(255),
    code INT PRIMARY KEY
);

DROP TABLE IF EXISTS agecodes;
CREATE TABLE IF NOT EXISTS agecodes (
    name VARCHAR(255),
    code INT PRIMARY KEY
);

DROP TABLE IF EXISTS gendercodes;
CREATE TABLE IF NOT EXISTS gendercodes (
    name VARCHAR(255),
    code INT PRIMARY KEY
);
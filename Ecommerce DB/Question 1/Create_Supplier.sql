create database e_commerce;
use e_commerce;

CREATE TABLE IF NOT EXISTS supplier(
SUPP_ID int primary key auto_increment,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50),
SUPP_PHONE varchar(10) NOT NULL
);

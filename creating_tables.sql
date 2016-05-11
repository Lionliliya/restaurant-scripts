
CREATE DATABASE restaurant CHARACTER SET utf8 COLLATE utf8_general_ci;
show databases;
use restaurant;

/**create tables**/

CREATE table INGREDIENT (
	id int not null auto_increment primary key,
	name varchar(60) not null
);

CREATE table WAREHOUSE (
	id int not null auto_increment primary key,
	ingred_id int not null references INGREDIENT(id),
    amount int not null 
);

CREATE table DISH (
	id int not null auto_increment primary key,
    name varchar(120) not null,
	category varchar(60),
    price DECIMAL(5,1),
    weigth int not null 
);

CREATE table DISH_INGTREDIENTS (
	dish_id int not null references DISH(id),
    ingred_id int not null references INGREDIENT(id)
);

CREATE table EMPLOYEE (
	id int not null auto_increment primary key,
    second_name varchar(60) not null,
    first_name varchar(60) not null,
    empl_date DATE not null,
    phone varchar(20),
    position varchar(120) not null,
    salary int not null
);

CREATE table MENU (
	id int not null auto_increment primary key,
    name varchar(60) not null
);

CREATE table MENU_DISH (
	menu_id int not null references MENU(id),
    dish_id int not null references DISH(id)
);

CREATE table ORDER_FROM_MENU (
	id int not null auto_increment primary key,
	order_num int not null,
    employee_id int references EMPLOYEE(id),
    table_num int, 
    order_date DATETIME not null  
);

CREATE table ORDER_DISH (
	order_id int references ORDER_FROM_MENU(id),
    dish_id int references DISH(id)
);

CREATE table READY_MEALS (
	id int not null auto_increment primary key,
    dish_numb int,
    dish_id int references DISH(id),
    employee_id int references EMPLOYEE(id),
    order_id int references ORDER_FROM_MENU(id),
    meal_date DATETIME not null
);
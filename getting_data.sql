use restaurant;

show tables;

select d.name, d.price, d.weigth from DISH as d order by d.price;

select d.name, d.price, d.weigth from DISH as d where d.price BETWEEN 20 and 50 order by d.price;

select * from EMPLOYEE where EMPLOYEE.position LIKE 'wait%';

select WAREHOUSE.amount, INGREDIENT.name from WAREHOUSE INNER JOIN INGREDIENT on WAREHOUSE.ingred_id = INGREDIENT.id;

/*ALIASES
select w.amount, i.name from WAREHOUSE as w INNER JOIN INGREDIENT as i on w.ingred_id = i.id;*/

select o.order_num, o.table_num, e.first_name from ORDER_FROM_MENU as o right join EMPLOYEE as e  on o.employee_id = e.id;

select o.order_num, o.table_num, e.first_name from ORDER_FROM_MENU as o inner join EMPLOYEE as e  on o.employee_id = e.id;

select * from READY_MEALS;
select count(*) as all_orders from READY_MEALS group by order_id;
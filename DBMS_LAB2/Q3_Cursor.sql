DECLARE cursor cust_cursor is 
select id,salary from customer where id = 102;
for update;
incr_sal number;
BEGIN
for cust_rec in cust_cursor LOOP
if cust_rec.salary < 2000 then
incr_sal := 0.15;
else 
incr_sal := 0.10;
end if;
update customer set salary = salary + salary*incr_sal where current of cust_cursor;
end loop;
end;
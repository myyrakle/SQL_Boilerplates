with person(name, age) AS 
(
    values('john', 20), ('tom', 22), ('anderson', 18), ('Cheolsu', 15)
)
select *
from person
where age >= 20;

select *
from
(
    values('john', 20), ('tom', 22), ('anderson', 18), ('Cheolsu', 15)
) AS person(name, age)
where age < 20;

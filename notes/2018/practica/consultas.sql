-- Punto 3.5

SELECT s.sid as proveedor
FROM suppliers s 
WHERE NOT EXISTS (
	select *
    FROM parts p 
    where not exists (
		select *
        from catalog c
        where c.pid = p.pid and c.sid = s.sid
	)
);

SELECT s.sid as proveedor
from suppliers s 
where not exists(
	select *
    from parts p
    where p.pid not in (
		select c.pid
        from catalog c
        where c.sid = s.sid
	)
);

-- Tercer alternativa

select c.sid
from catalog c 
group by c.sid
having count(c.pid) = (select count(*)
						from parts)

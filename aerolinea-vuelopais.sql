
use aerolinea;

create table vuelo_salida as 
 select p.pais, count(*) nro_salida 
 from vuelo v 
 left join pais p on v.origen=p.cod_pais 
 group by p.pais;
select * from vuelo_salida order by nro_salida desc limit 1;

create table vuelo_llegada as 
 select p.pais, count(*) nro_llegada
 from vuelo v
 left join pais p on v.destino=p.cod_pais
 group by p.pais;
select * from vuelo_llegada order by nro_llegada desc limit 1;




use aerolinea;
 
create table retraso_vuelo as 
select  
cast(substr(retraso, 1, 4) as int) vuelo, 
cast(substr(retraso,5,7) as int) minuto 
from retraso;


create table vuelo_total as 
select  v.vuelo, v.origen, v.destino, r.minuto retraso  
from vuelo v 
left join retraso_vuelo r 
on v.vuelo=r.vuelo;


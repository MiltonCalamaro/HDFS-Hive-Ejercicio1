create database if not exists aerolinea;
use aerolinea;

create external table if not exists fecha (
    vuelo integer,
    dia integer )
    row format delimited
    fields terminated by '_'
    location "/user/hive/datos/aerolinea/fecha";
create external table if not exists retraso (
   retraso integer )
   row format delimited
   location "/user/hive/datos/aerolinea/retraso";
create external table if not exists vuelo (
    vuelo integer,
    origen string,
    destino  string )
    row format delimited
    fields terminated by '|'
    location "/user/hive/datos/aerolinea/vuelo";
create table if not exists pais (
    cod_pais string,
    pais string )
    row format delimited
    fields terminated by ';'
    location "/user/hive/datos/aerolinea/pais";





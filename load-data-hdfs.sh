ruta=$1
cd /datos/data_aerolinea/
hdfs dfs -mkdir $ruta
hdfs dfs -mkdir $ruta/fecha
hdfs dfs -mkdir $ruta/paises
hdfs dfs -mkdir $ruta/retrasos
hdfs dfs -mkdir $ruta/vuelos
hdfs dfs -put fecha.dat $ruta/fecha
hdfs dfs -put paises.ada $ruta/paises
hdfs dfs -put retrasos.dat  $ruta/retrasos
hdfs dfs -put vuelos.dat  $ruta/vuelos
echo "Cargando datos de $(pwd) a hdfs"


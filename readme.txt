###build image#####
docker build --rm -t airflow-image .


####run image#####
docker-compose -f docker-compose-CeleryExecutor.yml up -d

mysql://superset:XXXXXXXXXX@mysql:3306/superset
# Apache Spark standalone cluster with spatial analysis capabilities

Working Apache Spark standalone cluster with Jupiter Notebook as a driver.

Jupiter Notebook 

Password:
```
my-password
```
Token:
```
easy
```
Apache Sedona (https://sedona.apache.org/) is used to perform spatial operations.

Proper functioning require specific notebook core based on python 3.6.
Whole list of requirements is in requirements.txt
Command to create environment is in

```
conda create -p jupiter-notebook/venv36 --file requirements.txt
```
To run Apache Spark cluster with 5 standalone workers
```
docker-compose up -d --build --scale spark-worker=5
```

US States borders spatial data URL is

```
https://github.com/datasets/geo-admin1-us/blob/master/data/admin1-us.geojson
```

Jupiter notebook:

```
localhost:8888
```

Apache Spark master UI:

```
localhost:8080
```

Apache Spark driver UI:

```
localhost:4040
```
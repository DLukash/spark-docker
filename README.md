# spark-docker

Working Apache Spark cluster with Jupiter Notebook that can serve as a driver.

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

Additionally need to activate kernel for Jupiter notebook from container's shell

```
conda activate /opt/conda/envs/venv36
python -m ipykernel install --user --name=venv36
```




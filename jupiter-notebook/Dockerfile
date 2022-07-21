FROM jupyter/scipy-notebook:python-3.8.8
# FROM jupyter/pyspark-notebook:spark-3.1.2

USER root
RUN apt-get update
# RUN apt-get -y install telnet
RUN apt -y install default-jdk


# ARG spark_version=3.0.2
# ARG hadoop_version=3.0
# ENV APACHE_SPARK_VERSION=3.0.2 HADOOP_VERSION=3.0
# RUN |4 spark_version=3.0.2 hadoop_version=3.0 spark_checksum=2385CB772F21B014CE2ABD6B8F5E815721580D6E8BC42A26D70BBCDDA8D303D886A6F12B36D40F6971B5547B70FAE62B5A96146F0421CB93D4E51491308EF5D5 openjdk_version=11 /bin/bash -o pipefail -c apt-get update --yes &&     apt-get install --yes --no-install-recommends     "openjdk-${openjdk_version}-jre-headless"     ca-certificates-java &&     apt-get clean && rm -rf /var/lib/apt/lists/* # buildkit

USER ${NB_USER}


#RUN conda create --name venv36 python=3.6.15 pyspark=3.0.2 geopandas=0.6.0 apache-sedona conda-pack

RUN conda install --quiet --yes pyspark=3.0.2 geopandas=0.6.0 apache-sedona conda-pack && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

ADD venv36 /opt/conda/envs/venv36/
# ADD venv36_kernel /home/jovyan/.local/share/jupyter/kernels/venv36

ENV JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
ENV PYSPARK_DRIVER_PYTHON='/opt/conda/envs/venv36/bin/python'

#! TODO Make this work!!! Need to registrate kernel while building
USER root
RUN conda activate /opt/conda/envs/venv36 && \
    python -m ipykernel install --user --name=venv36


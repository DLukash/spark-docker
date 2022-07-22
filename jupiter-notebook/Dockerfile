FROM jupyter/scipy-notebook:python-3.8.8

USER root
RUN apt-get update
RUN apt -y install default-jdk

ADD venv36 /home/venv36/

USER root
RUN chown -R jovyan /home/venv36/

USER ${NB_USER}
RUN conda run -p /home/venv36/ python -m ipykernel install --user --name=venv36
ENV JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
ENV PYSPARK_DRIVER_PYTHON='/opt/conda/envs/venv36/bin/python'

FROM jupyter/scipy-notebook:python-3.8.8

USER root
RUN apt-get update
RUN apt-get -y install telnet
RUN apt -y install default-jdk

USER ${NB_USER}
RUN pip install --quiet --no-cache-dir pyspark && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# EXPOSE 7077



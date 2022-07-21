FROM jupyter/scipy-notebook:python-3.8.8
# FROM jupyter/pyspark-notebook:spark-3.1.2

USER root
RUN apt-get update
RUN apt -y install default-jdk

USER ${NB_USER}

RUN conda install --quiet --yes pyspark=3.0.2 geopandas=0.6.0 apache-sedona conda-pack && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

ADD venv36 /opt/conda/envs/venv36/


ENV JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
ENV PYSPARK_DRIVER_PYTHON='/opt/conda/envs/venv36/bin/python'

COPY registrate-core.sh registrate-core.sh


# USER root
# RUN conda run -p /opt/conda/envs/venv36 python -m ipykernel install --user --name=venv36
# # SHELL ["conda", "run", "-p", "/opt/conda/envs/venv36", "/bin/bash", "-c"]
# #RUN python -m ipykernel install --user --name=venv36

# USER ${NB_USER}
#SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# SHELL ["/bin/bash", "--login", "-c"]
# RUN conda init bash
# RUN echo "conda activate /opt/conda/envs/venv36" > ~/.bashrc
# RUN python -m ipykernel install --user --name=venv36
# RUN conda activate /opt/conda/envs/venv36 && \
#     python -m ipykernel install --user --name=venv36
#! TODO Make this work!!! Need to registrate kernel while building
# ENTRYPOINT ["/bin/bash", "conda activate /opt/conda/envs/venv36", "python -m ipykernel install --user --name=venv36" ]

# CMD [ "conda activate /opt/conda/envs/venv36"]
# CMD [ "python -m ipykernel install --user --name=venv36"]


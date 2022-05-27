FROM apache/airflow:latest-python3.9

RUN pip install --user pytest

COPY dags/ ${AIRFLOW_HOME}/dags
COPY airflow.cfg ${AIRFLOW_HOME}/airflow.cfg
COPY unittests.cfg ${AIRFLOW_HOME}/unittests.cfg
COPY unittests/ ${AIRFLOW_HOME}/unittests
COPY integrationtests ${AIRFLOW_HOME}/integrationtests

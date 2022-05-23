FROM apache/airflow:latest-python3.9

RUN pip install --user pytest

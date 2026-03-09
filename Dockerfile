FROM apache/airflow:3.0.0-python3.11

# Instala o extra [auth] (traz de volta o FAB Auth Manager)
RUN pip install --no-cache-dir \
    "apache-airflow[auth]==3.0.0" \
    apache-airflow-providers-microsoft-winrm \
    apache-airflow-providers-smtp \
    pandas \
    requests \
    pytest

# 🚀 Apache Airflow 3.0 com Docker (Ambiente Local)

Este repositório contém a infraestrutura completa para rodar o **Apache Airflow 3.0** localmente utilizando Docker e Docker Compose. O ambiente foi configurado com o CeleryExecutor, um banco de dados PostgreSQL e o Redis como mensageiro.

Este código faz parte do tutorial completo no YouTube, onde mostro passo a passo como configurar e resolver os principais problemas na hora de subir o seu ambiente de Engenharia de Dados local.

## 🛠️ Arquitetura do Projeto

Nosso `docker-compose.yaml` levanta os seguintes microsserviços:
- **Postgres:** Banco de dados (Metastore do Airflow).
- **pgAdmin:** Interface gráfica para gerenciar o banco de dados (porta `5050`).
- **Redis:** Fila de mensagens para as tarefas.
- **Airflow Webserver:** Interface gráfica do Airflow (porta `8080`).
- **Airflow Scheduler:** Agendador de tarefas.
- **Airflow Worker:** Trabalhadores que executam as DAGs (Celery).
- **Airflow Triggerer:** Gerenciador de tarefas assíncronas.
- **Airflow Dag Processor:** **[NOVIDADE AIRFLOW 3.0]** Serviço dedicado para processar os arquivos `.py` e reconhecer as DAGs automaticamente.

## ⚙️ Pré-requisitos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado e rodando.
- Git instalado na sua máquina.

## 🚀 Como rodar o projeto

**1. Clone o repositório**
```bash
git clone [https://github.com/ericaabrantes/seu-repositorio-airflow.git](https://github.com/ericaabrantes/seu-repositorio-airflow.git)
cd seu-repositorio-airflow
```

***Exemplo de .env

AIRFLOW_UID=50000
AIRFLOW__CORE__FERNET_KEY=coloque_uma_chave_fernet_aqui
AIRFLOW__WEBSERVER__SECRET_KEY=coloque_uma_chave_secreta_aqui

# --- CREDENCIAIS DE BANCO DE DADOS E ACESSOS ---
POSTGRES_USER=airflow
POSTGRES_PASSWORD=senha_banco_segura
POSTGRES_DB=airflow

PGADMIN_EMAIL=admin@admin.com
PGADMIN_PASSWORD=admin

SMTP_PASSWORD=senha_do_email_aqui #usado para configurar envio de email pelo airflow

_AIRFLOW_WWW_USER_USERNAME=admin
_AIRFLOW_WWW_USER_PASSWORD=senha_painel_airflow

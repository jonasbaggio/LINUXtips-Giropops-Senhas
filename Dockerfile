FROM ubuntu:22.04 as build
LABEL maintener="jonas.baggio@gmail.com"
LABEL description="Dockerfile para o desafio 2 - gerador de senhas"

COPY ./giropops-senhas /app

WORKDIR /app

RUN apt-get update && \
    apt-get install pip -y && \
    apt-get install curl -y && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV REDIS_HOST="192.168.1.69"

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0

HEALTHCHECK --timeout=5s --interval=10s --retries=2 --start-period=10s CMD curl -f localhost:5000 || exit 1

Clonar o nosso repo:

git clone https://github.com/badtuxx/giropops-senhas.git
Entrar no diretório

cd giropops-senhas/
Realizando o update do apt

apt-get update
Instalando o PIP

apt-get install pip
Instalando todas as dependencias da nossa app

pip install --no-cache-dir -r requirements.txt
Instalando o Redis, que é usado pela nossa app

apt-get install redis
Iniciando o Redis

systemctl start redis
systemctl status redis
Criando a variavel de ambiente para que a nossa App saiba onde está o Redis

export REDIS_HOST=localhost
Iniciando a nossa APp

flask run --host=0.0.0.0



--
docker image build -t jonasbaggio/linuxtips-giropops-senhas:1.0 .
docker run -d --name redis -p 6379:6379 redis:7.2.4-alpine
docker container run -d --name giropops-senhas -p 5001:5000 jonasbaggio/linuxtips-giropops-senhas:1.0 


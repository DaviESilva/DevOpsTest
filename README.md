# Projeto para vaga DevOps Ploomes

Projeto para a vaga por meio de containers em docker e comunicação entre si.

## Como rodar

### Instalando dependências
Acesse a pasta `./api` no terminal e execute:
```
npm install
```

Com isso teremos as dependências do Node das quais são necessárias.

### Construindo as imagens

A partir da raíz do projeto, construa cada imagem (MySQL, Node API e PHP):

```
docker build -t mysql-image -f api/db/Dockerfile .
```
```
docker build -t node-image -f api/Dockerfile .
```
```
docker build -t php-image -f website/Dockerfile .
```

### Rodando os containers
Na pasta raíz do projeto, execute um de cada vez:

```
docker run -d -v /api/db/data:/var/lib/mysql --rm --name mysql-container mysql-image
```
```

docker run -d -v /api:/home/node/app -p 9001:9001 --link mysql-container --rm --name node-container node-image
```
```
docker run -d -v "/website":/var/www/html -p 8888:80 --link node-container --rm --name php-container php-image
```

### Agora faça o restore do banco:
```
docker exec -i mysql-container mysql -uroot -pdevopsPloomes < api/db/script.sql
```

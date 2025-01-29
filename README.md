# Estudo de docker com a utilização de docker-compose e Dockerfile


## Objetivo
Nesse repositório busquei criar uma simples aplicação buscando suprir os seguintes itens:

✅ Criação de uma imagem personalizada com base no Dockerfile.

✅ Utilização de Docker Compose para facilitar a criação e gestão da API e do banco de dados.

✅ Criação um banco de dados PostgreSQL com persistência de dados via volumes.

✅ A API Flask pode consultar o banco de dados e retornar informações via GET para o endpoint /users.

<br>

## Caso fique interessado, abaixo deixo uma simples maneira de visualizar a execução desse projeto

<br>

Dessa maneira subimos os serviços presentes no docker-compose.yml e verificamos se o status do container.
```
docker compose up -d
docker ps
```


Utilize ```curl http://localhost:5000``` para acessar a API

<br>

Com esses comando realizamos a criação da tabela de usuários e populamos essa tabela com dois nomes
```
docker exec -it postgres-db psql -U user -d mydatabase

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
INSERT INTO users (name) VALUES ('Alice'), ('Bob');
```

<br>

Aqui verificamos os dados presentes na tabela criada, utilizando o endpoint /users
```
curl http://localhost:5000/users 
```

<br>

## Desenvolvedor
Abner Rodrigues

abnerwcrodrigues@outlook.com

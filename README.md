# Projeto Final Preparatório - Docker Compose Senac MS

Projeto desenvolvido como preparação para o Projeto Final da disciplina de Docker Compose.

O objetivo é demonstrar a criação de uma aplicação composta por múltiplos serviços utilizando Docker Compose, MySQL, FastAPI, PHP e Nginx.

---

## Tecnologias empregadas no prjeto

- Docker
- Docker Compose
- MySQL 8
- FastAPI
- Python 3.12
- PHP 8.2-FPM
- Nginx Alpine

---

## Estrutura do Projeto

```
projeto-final-preparatorio/
├── backend/
│   ├── app/
│   ├── Dockerfile
│   └── requirements.txt
│
├── frontend/
│   ├── public/
│   └── nginx/
│
├── database/
│   └── init.sql
│
├── docker-compose.yml
├── .env.example
└── README.md
```

---

## Arquitetura conforme solicitado pelo professor

```
                Navegador
                     │
                     ▼
              +-------------+
              |    Nginx    |
              +-------------+
               │         │
               │         ▼
               │     PHP-FPM
               │
               ▼
           FastAPI
               │
               ▼
             MySQL
```

---

## Serviços

| Serviço | Porta | Função |
|----------|-------|--------|
| nginx | 8080 | Servidor Web |
| api | 8000 | Backend FastAPI |
| php | 9000 | Processamento PHP |
| db | 3306 | Banco de Dados MySQL |

---

## Redes Docker

- frontend_net
- backend_net

---

## Volume Persistente

```
mysql_data
```

Responsável por manter os dados do MySQL mesmo após reiniciar os containers.

---

## Variáveis de Ambiente

Copie o arquivo:

```
.env.example
```

para

```
.env
```

e ajuste as variáveis conforme necessário.

---

## Como executar

Construir as imagens

```bash
docker compose build
```

Subir o ambiente

```bash
docker compose up -d
```

Verificar containers

```bash
docker compose ps
```

Parar o ambiente

```bash
docker compose down
```

---

## URLs

Frontend

```
http://localhost:8080
```

API

```
http://localhost:8000
```

Swagger

```
http://localhost:8000/docs
```

Health Check

```
http://localhost:8080/api/health
```

Informações

```
http://localhost:8080/api/info
```

Teste do Banco

```
http://localhost:8080/api/db-check
```

---

## Funcionalidades

- Docker Compose
- Redes Docker
- Volumes
- FastAPI
- MySQL
- PHP-FPM
- Nginx
- Proxy Reverso
- Variáveis de Ambiente
- Persistência de Dados

---

## Autor

Desenvolvido por **Alex Cabanha =) **.
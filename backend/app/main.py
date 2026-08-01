from fastapi import FastAPI
import os
import pymysql

app = FastAPI()


@app.get("/")
def root():
    return {
        "message": "API do Projeto Final funcionando!"
    }


@app.get("/health")
def health():
    return {
        "status": "ok"
    }


@app.get("/info")
def info():
    return {
        "app": "Projeto Final Preparatório",
        "ambiente": os.getenv("APP_ENV")
    }


@app.get("/db-check")
def db_check():
    try:
        conexao = pymysql.connect(
            host=os.getenv("DB_HOST"),
            port=int(os.getenv("DB_PORT")),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME")
        )

        conexao.close()

        return {
            "database": "connected"
        }

    except Exception as erro:
        return {
            "database": "error",
            "detail": str(erro)
        }
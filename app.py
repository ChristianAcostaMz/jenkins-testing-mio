# app.py
from flask import Flask
import os
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

@app.route('/')
def hello():
    mensaje = os.getenv("MENSAJE", "Hola, Jenkins y Docker!")
    return mensaje

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.get("/")
def root():
    return jsonify(message="Hola Mundo desde Flask 🚀")

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8000))  # Render inyecta PORT
    app.run(host="0.0.0.0", port=port)

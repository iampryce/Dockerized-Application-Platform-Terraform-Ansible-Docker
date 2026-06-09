import os
import psycopg2
from flask import Flask, jsonify

app = Flask(__name__)

DATABASE_URL = os.environ.get(
    "DATABASE_URL",
    "postgresql://appuser:apppassword@db:5432/appdb"
)


def get_db_connection():
    return psycopg2.connect(DATABASE_URL)


@app.route("/")
def index():
    return jsonify({
        "service": "flask-api",
        "status": "running",
        "version": "1.0"
    })


@app.route("/health")
def health():
    try:
        conn = get_db_connection()
        conn.close()
        db_status = "connected"
    except Exception:
        db_status = "unavailable"
    return jsonify({"status": "healthy", "database": db_status})


@app.route("/api/status")
def api_status():
    return jsonify({
        "api": "online",
        "database": "postgresql",
        "containers": ["nginx", "backend", "db"]
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

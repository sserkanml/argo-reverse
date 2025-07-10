from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    username = os.environ.get("USERNAME", "unknown")
    password = os.environ.get("PASSWORD", "notset")
    message = os.environ.get("CONFIG_MESSAGE", "default message")
    return f"Hello {username}, secret: {password}, message: {message}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

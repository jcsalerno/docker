#!/usr/bin/env python3

from flask import Flask
from os import getenv
from requests import get

import json

app = Flask(__name__)

@app.route('/')
def hello():
    return """
<!DOCTYPE html>
<html lang="en>
<head>
    <meta charset="UTF-8">
    <title>FlaskApp!</title>
</head>
<body>
    <h1>DEMO</h1>
</body>
</html>
    """

@app.route('/health')
def health():
    return "HEALTHY", 503

if __name__ == '__main__':
    app().run(host='0.0.0.0')
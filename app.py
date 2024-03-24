from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def hello_cloud():
    return 'Hello Cloud!'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
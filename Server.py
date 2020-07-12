from flask import Flask

app = Flask(__name__)


@app.route('/order')
def order():
    response = {
        'name': 'computer',
        'price': 1000
    }
    return response


@app.route('/')
def main():
    response = {
        'msg': 'Hello From Flask'
    }
    return response


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)

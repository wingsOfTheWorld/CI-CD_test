from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_flask():
    return "Hello, Flask!"


# 启动应用
if __name__ == '__main__':
    print('版本更新4')
    app.run(host='0.0.0.0', port=5000, debug=True)

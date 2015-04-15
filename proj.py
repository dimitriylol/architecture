from flask import *

app = Flask(__name__)


@app.route('/')
@app.route('/index')
def index():
    return render_template("index.htm")

@app.route('/task')
def task():
    list_args = "2, 3"
    return list_args


@app.route('/return-result', methods=['GET', 'POST'])
def return_result():
    return request.form['res']


if __name__ == '__main__':
    app.run(debug=True)

import flask

app = flask.Flask(__name__)


@app.route('/', methods=['GET'])
def home():
    return "<h1>Docker base app</h1><p>This site is a prototype API with one demo route at / </p>"

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')

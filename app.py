from flask import (Flask)

app=Flask(__name__)

@app.route('/')
def home():
    return "<h1>Hello, World! This is the home page.</h1>"

if __name__ == '__main__':  
    app.run(port=5000,debug=True)
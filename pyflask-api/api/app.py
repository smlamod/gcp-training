from os import environ
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
from models.employee import Employee
from sqlalchemy import or_
import datetime

UNAME = environ.get('MYSQL_USERNAME')
PASWD = environ.get('MYSQL_PASSWORD')

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql://{UNAME}:{PASWD}@localhost/gcptraining'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db = SQLAlchemy(app)

@app.route('/', methods=(['GET']))
def home():
    return '<h1>Welcome Rotonda!!</h1>'

@app.route('/employee', methods=(['GET']))
def get_employees():
    results = Employee.query.all()
    return jsonify(results), 200

@app.route('/employee/query/<string:query>', methods=(['GET']))
def get_employee_by_query(query):
    results = Employee.query.filter(or_(Employee.KnownAsName.contains(query), Employee.UserId == query)).all()
    return jsonify(results),200
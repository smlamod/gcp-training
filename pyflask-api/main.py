from os import environ
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
from models.Employee import Employee
from sqlalchemy import or_
import datetime
from flask_cors import CORS

#UNAME = environ.get('MYSQL_USERNAME')
#PASWD = environ.get('MYSQL_PASSWORD')

db_user = environ.get("DB_USER")
db_pass = environ.get("DB_PASS")
db_name = environ.get("DB_NAME")
cloud_sql_connection_name = environ.get("CLOUD_SQL_CONNECTION_NAME")

app = Flask(__name__)
CORS(app)

app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql://{db_user}:{db_pass}@/{db_name}?unix_socket=/cloudsql/{cloud_sql_connection_name}' 
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
    results = Employee.query.filter(or_(Employee.KnownAsName.contains(query), 
                                        Employee.UserId.startswith(query), 
                                        Employee.EmployeeNumber == query)).all()
    return jsonify(results),200


if __name__ == '__main__':
    # This is used when running locally. Gunicorn is used to run the
    # application on Google App Engine. See entrypoint in app.yaml.
    app.run(host='127.0.0.1', port=8080, debug=True)
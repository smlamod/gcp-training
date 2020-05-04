import datetime
from dataclasses import dataclass
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

@dataclass
class Employee(db.Model):
    __tablename__ = 'Employee'
    
    Id : int
    EmployeeNumber : str
    UserId : str
    SupervisorEmployeeNumber : str
    DepartmentName : str
    FirstName : str 
    Lastname : str
    KnownAsName : str 	
    Phone : str 
    Email : str 
    DateOfBirth = datetime.datetime
    IsActive = bool
    TimeZone : str
    CreatedDate = datetime.datetime    

    Id = db.Column(db.Integer, primary_key=True)
    EmployeeNumber = db.Column(db.String(256), unique=True)
    UserId = db.Column(db.String(256))
    SupervisorEmployeeNumber = db.Column(db.String(256))
    DepartmentName = db.Column(db.String(256))
    FirstName = db.Column(db.String(256)) 
    Lastname = db.Column(db.String(256))
    KnownAsName = db.Column(db.String(256)) 	
    Phone = db.Column(db.String(256)) 
    Email = db.Column(db.String(256)) 
    DateOfBirth = db.Column(db.DateTime)
    IsActive = db.Column(db.Boolean)
    TimeZone = db.Column(db.String(256))
    CreatedDate = db.Column(db.DateTime)   
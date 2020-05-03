import { Component, OnInit } from '@angular/core';

export interface employee {
  Id : number
  UserId : string
  SupervisorEmployeeNumber : string
  DepartmentName : string
  FirstName : string 
  Lastname : string
  KnownAsName : string 	
  Phone : string 
  Email : string 
  DateOfBirth : Date
  IsActive : Boolean
  TimeZone : string
  CreatedDate : Date
}

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.css']
})
export class EmployeeComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}

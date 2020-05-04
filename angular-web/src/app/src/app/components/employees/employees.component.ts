import { Component, OnInit} from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface employee {
  Id : number
  EmployeeNumber : string
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

const BASEURL = 'https://training-project-042020a.uc.r.appspot.com/';

@Component({
  selector: 'app-employees',
  templateUrl: './employees.component.html',
  styleUrls: ['./employees.component.css']
})
export class EmployeesComponent implements OnInit {
  deb : any;
  employees : employee[];

  constructor(private http : HttpClient) {
      this.getAllEmployees();
   }

  ngOnInit(): void {
  }

  onSearchChange(searchValue: string): void {
    clearTimeout(this.deb);
    this.deb = setTimeout(() => {
      if (searchValue == undefined || searchValue.length < 3){
        this.getAllEmployees();
      } else {
        this.http.get<employee[]>(BASEURL + 'employee/query/' + searchValue).subscribe(result => {
          this.employees = result;
          }, error => console.error(error));
      }
    }, 800)
  }

  getAllEmployees() : void {
    this.http.get<employee[]>(BASEURL + 'employee').subscribe(result => {
      this.employees = result;
      }, error => console.error(error));
  }
}

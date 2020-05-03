import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NavBarComponent } from './src/app/components/nav-bar/nav-bar.component';
import { HomeComponent } from './src/app/components/home/home.component';
import { EmployeesComponent } from './src/app/components/employees/employees.component';
import { EmployeeComponent } from './src/app/components/employees/employee/employee.component';
import { AboutComponent } from './src/app/components/about/about.component';
import { SideBarComponent } from './src/app/components/side-bar/side-bar.component';

@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    HomeComponent,
    EmployeesComponent,
    EmployeeComponent,
    AboutComponent,
    SideBarComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }

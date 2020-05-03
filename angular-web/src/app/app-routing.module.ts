import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './src/app/components/home/home.component';
import { AboutComponent } from './src/app/components/about/about.component';
import { EmployeesComponent } from './src/app/components/employees/employees.component';


const routes: Routes = [
    { path: '', component: HomeComponent, pathMatch: 'full' },
    { path: 'home', component: HomeComponent },
    { path: 'about', component: AboutComponent },
    {
      path: 'employees', component: EmployeesComponent,
      // children: [
      //   { path: 'timelog', component: TimelogComponent }
      // ]
    }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

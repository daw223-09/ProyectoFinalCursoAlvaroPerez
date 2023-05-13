import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  loggedIn = false;
  user: any;
  constructor(private http: HttpClient, private router: Router){

  }

  ngOnInit(){

    this.loggedIn = localStorage.getItem("token") !== null;

    if(this.loggedIn){
      const headers = new HttpHeaders({
        "Authorization": `Bearer ${localStorage.getItem("token")}`
      });
      this.http.get("http://185.253.155.205/back/api/index.php/api/user", { headers: headers }).subscribe({
        next: (result: any) => {
          this.user = result
        },
        error: err => console.log(err)
      }
      );
    }

    
  }
}

import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-secure',
  templateUrl: './secure.component.html',
  styleUrls: ['./secure.component.css']
})
export class SecureComponent implements OnInit {

  user: any;
  constructor(private http: HttpClient, private router: Router){

  }

  ngOnInit(){
    const headers = new HttpHeaders({
      "Authorization": `Bearer ${localStorage.getItem("token")}`
    });
    this.http.get("http://185.253.155.205/api/user", { headers: headers }).subscribe({
      next: (result: any) => {
        this.user = result
      },
      error: err => {
        localStorage.removeItem("token"),
        this.router.navigate(["/public/login"]);
      }
    }
    );
  }
}

import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  form: FormGroup;

  constructor(private fb: FormBuilder, private http: HttpClient, private router: Router) {

  }

  ngOnInit() {
    this.form = this.fb.group({
      email: "",
      password: ""
    });
  }


  submit() {
    const formData = this.form.getRawValue();
    const data = {
      username: formData.email,
      password: formData.password,
      grant_type: "password",
      client_id: 2,
      client_secret: "BHIKIghnfJgYok4VOh2asdhaVngUVab8AILmvhec",
      scope: "*"
    };

    this.http.post("http://185.253.155.205/back/api/index.php/oauth/token", data).subscribe({
      next: (result: any) => {
        console.log(result)
        localStorage.setItem("token", result.access_token),
        this.router.navigate(["/"]).finally(() => location.reload());
      },
      error:err=>alert("Credenciales incorrectas")
    });
  }
}
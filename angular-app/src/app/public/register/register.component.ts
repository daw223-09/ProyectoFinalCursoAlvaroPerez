import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  form: FormGroup;

  constructor(private fb: FormBuilder, private http: HttpClient){

  }

  ngOnInit(): void {
    this.form = this.fb.group({
      name: ["", Validators.required],
      email: ["", [Validators.required, Validators.email]],
      password: ["", Validators.required],
      password_confirmation: ["", Validators.required]
    })
  }

  submit(){
    const formData = this.form.getRawValue();

    this.http.post("http://185.253.155.205/api/register", formData).subscribe({
      next:result=>console.log(result),
      error:err=>console.log(err)
    });
  }
}

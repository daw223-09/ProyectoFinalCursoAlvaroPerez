import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-clases',
  templateUrl: './clases.component.html',
  styleUrls: ['./clases.component.css']
})
export class ClasesComponent {

  loggedIn = false;
  aBodyCombat = false; aBodyPump = false; aSpinning = false; aYoga = false; aXcore = false; aZumba = false;
  claseApuntado = [this.aBodyCombat, this.aBodyPump, this.aSpinning, this.aYoga, this.aXcore, this.aZumba];

  pBodyCombat = 0; pBodyPump = 0; pSpinning = 0; pYoga = 0; pXcore = 0; pZumba = 0;

  idUsuario: any;

  constructor(private http: HttpClient, private router: Router) {

  }

  ngOnInit(): void {
    this.loggedIn = localStorage.getItem("token") !== null;

    this.http.get<any>('http://localhost:8000/api/index').subscribe(data => {
      this.pBodyCombat = data[0].plazas;
      this.pBodyPump = data[1].plazas;
      this.pSpinning = data[2].plazas;
      this.pYoga = data[3].plazas;
      this.pXcore = data[4].plazas;
      this.pZumba = data[5].plazas;
    });

    const headers = new HttpHeaders({
      "Authorization": `Bearer ${localStorage.getItem("token")}`
    });

    this.http.get<any>('http://localhost:8000/api/user', { headers: headers }).subscribe(data => {
      this.idUsuario = data.id,
        this.http.get<any>('http://localhost:8000/api/getClaseUsuario/' + this.idUsuario).subscribe(data => data.forEach((element: any) => {
          for (let i = 0; i < this.claseApuntado.length; i++) {
            if (element["clase_id"] == i) {
              switch (i) {
                case 1:
                  this.aBodyCombat = true;
                  break;
                case 2:
                  this.aBodyPump = true;
                  break;
                case 3:
                  this.aSpinning = true;
                  break;
                case 4:
                  this.aYoga = true;
                  break;
                case 5:
                  this.aXcore = true;
                  break;
                case 6:
                  this.aZumba = true;
                  break;
              }
              /* this.claseApuntado[i] = true; */
            }
          }
        }));
    });


  }

  apuntarse(clase: any) {

    this.http.get<any>('http://localhost:8000/api/plazaClase/' + clase).subscribe(data => {

      switch (clase) {
        case 1:
          this.aBodyCombat = true;

          var newData = {
            id: clase,
            clase: "Body Combat",
            plazas: this.pBodyCombat - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pBodyCombat--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));

          break;

        case 2:
          this.aBodyPump = true;
          var newData = {
            id: clase,
            clase: "Body Pump",
            plazas: this.pBodyPump - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pBodyPump--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));
          break;

        case 3:
          this.aSpinning = true;
          var newData = {
            id: clase,
            clase: "Spinning",
            plazas: this.pSpinning - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pSpinning--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));
          break;

        case 4:
          this.aYoga = true;
          var newData = {
            id: clase,
            clase: "Yoga",
            plazas: this.pYoga - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pYoga--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));
          break;

        case 5:
          this.aXcore = true;
          var newData = {
            id: clase,
            clase: "Xcore",
            plazas: this.pXcore - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pXcore--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));
          break;

        case 6:
          this.aZumba = true;
          var newData = {
            id: clase,
            clase: "Zumba",
            plazas: this.pZumba - 1,
            created_at: null,
            updated_at: null
          }

          var clase_usuario = {
            id_usuario: this.idUsuario,
            id_clase: clase
          }

          this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pZumba--);

          this.http.post<any>('http://localhost:8000/api/claseUsuario', { clase_usuario: clase_usuario }).subscribe(data => console.log(data));
          break;
      }
    });



  }

  desapuntarse(clase: any) {
    switch (clase) {
      case 1:
        this.aBodyCombat = false;
        var newData = {
          id: clase,
          clase: "Body Combat",
          plazas: this.pBodyCombat + 1,
          created_at: null,
          updated_at: null
        };

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pBodyCombat++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));

        break;

      case 2:
        this.aBodyPump = false;
        var newData = {
          id: clase,
          clase: "Body Pump",
          plazas: this.pBodyPump + 1,
          created_at: null,
          updated_at: null
        }

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pBodyPump++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));
        break;

      case 3:
        this.aSpinning = false;
        var newData = {
          id: clase,
          clase: "Spinning",
          plazas: this.pSpinning + 1,
          created_at: null,
          updated_at: null
        }

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pSpinning++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));
        break;

      case 4:
        this.aYoga = false;
        var newData = {
          id: clase,
          clase: "Yoga",
          plazas: this.pYoga + 1,
          created_at: null,
          updated_at: null
        }

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pYoga++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));
        break;

      case 5:
        this.aXcore = false;
        var newData = {
          id: clase,
          clase: "Xcore",
          plazas: this.pXcore + 1,
          created_at: null,
          updated_at: null
        }

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pXcore++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));
        break;

      case 6:
        this.aZumba = false;
        var newData = {
          id: clase,
          clase: "Zumba",
          plazas: this.pZumba + 1,
          created_at: null,
          updated_at: null
        }

        this.http.post<any>('http://localhost:8000/api/apuntado/' + clase, { bodyCombat: newData }).subscribe(data => this.pZumba++);

        this.http.delete<any>('http://localhost:8000/api/claseUsuarioDelete/' + this.idUsuario + '/' + clase).subscribe(data => console.log(data));
        break;
    }

  }
}

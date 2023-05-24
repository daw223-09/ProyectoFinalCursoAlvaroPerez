import { Component } from '@angular/core';
import { ICreateOrderRequest, IPayPalConfig } from 'ngx-paypal';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router';

import { Inject } from '@angular/core';
import { DOCUMENT } from '@angular/common';

@Component({
  selector: 'app-material',
  templateUrl: './material.component.html',
  styleUrls: ['./material.component.css']
})
export class MaterialComponent {
  public payPalConfig?: IPayPalConfig;
  public showPaypalButtons: boolean;

  loggedIn = false;

  materiales: any = [];

  imgMateriales:any = [
    "assets/mancuernas.jpg", "assets/pesaRusa.jpg", "assets/discosHierro.jpeg", "assets/esterilla.jpeg", "assets/bandaElastica.jpg", "assets/comba.jpg"
  ];

  nombreMaterial: any = [];
  precioMaterial: any = [];

  carrito: any = [];
  itemsCarrito = false;

  total: any = 0;

  constructor(private http: HttpClient, private router: Router, @Inject(DOCUMENT) document: Document) {

  }

  ngOnInit() {
    this.loggedIn = localStorage.getItem("token") !== null;

    this.loggedIn = true;/* BORRAR */

    this.http.get<any>('http://185.253.155.205/back/api/index.php/api/material').subscribe(data => {
      data.forEach((element: any) => {
        this.materiales.push(element);
        this.nombreMaterial.push(element["material"]);
        this.precioMaterial.push(element["precio"]);
      });
    });

    this.initConfig();
  }


  addToCart(id: any) {
    this.total += this.precioMaterial[id];

    let newCarrito = document.createElement("div");
    newCarrito.textContent = this.nombreMaterial[id];

    this.carrito.push(newCarrito.textContent);
    this.itemsCarrito = true;
  }

  removeFromCart(material: any, index: any) {
    this.http.get<any>('http://185.253.155.205/back/api/index.php/api/materialPorNombre/' + material).subscribe(data => {
      this.total -= this.precioMaterial[data[0].id-1];
      this.carrito.splice(index, 1);
      if (this.carrito.length == 0) {
        this.total = 0;
        this.itemsCarrito = false;
      }
      
    });
  }

  private initConfig(): void {
    this.payPalConfig = {
      currency: 'EUR',
      clientId: 'AZ9LiWLFLfbfvvXuCB0sLMotCcoM5i27_FkVAXDxWSPrl5k-5dL1JAqUAW5BvoreLvzSfjBKOwzB1fyZ',
      createOrderOnClient: (data) => <ICreateOrderRequest>{
        intent: 'CAPTURE',
        purchase_units: [{
          amount: {
            currency_code: 'EUR',
            value: this.total.toString(),
            breakdown: {
              item_total: {
                currency_code: 'EUR',
                value: this.total.toString()
              }
            }
          },
          items: [{
            name: 'Enterprise Subscription',
            quantity: '1',
            category: 'DIGITAL_GOODS',
            unit_amount: {
              currency_code: 'EUR',
              value: this.total.toString(),
            },
          }]
        }]
      },
      advanced: {
        commit: 'true'
      },
      style: {
        label: 'paypal',
        layout: 'vertical'
      },
      onApprove: (data, actions) => {
        console.log('onApprove - transaction was approved, but not authorized', data, actions);
        actions.order.get().then((details: any) => {
          console.log('onApprove - you can get full order details inside onApprove: ', details);
        });

      },
      onClientAuthorization: (data) => {
        console.log('onClientAuthorization - you should probably inform your server about completed transaction at this point', data);

      },
      onCancel: (data, actions) => {
        console.log('OnCancel', data, actions);

      },
      onError: err => {
        console.log('OnError', err);

      },
      onClick: (data, actions) => {
        console.log('onClick', data, actions);

      }
    };
  }




}
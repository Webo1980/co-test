import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs';

export interface Product {
    id: Number,
    title: String,
    count: Number,
    isUpdating: boolean
}

const API_URL: string = 'http://127.0.01:8000';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

    private accessToken;
    private headers;

    constructor(private http: Http) {
        this.init();
    }

    async init() {
        this.headers = new Headers({
            Authorization: 'Bearer ' + this.accessToken
        });
    }

    getProducts(): Observable<Product[]> {
        return this.http.get(API_URL + '/products',
            new RequestOptions({ headers: this.headers })
        )
        .map(res => {
            let modifiedResult = res.json();
            modifiedResult = modifiedResult.map(function(product) {
                product.isUpdating = false;
                return product;
            });
            return modifiedResult;
        });
    } 
   
    getById(id: string): Promise<Product> {
         return this.http.get(API_URL + id)
	 .toPromise()
        .then(response => response.json())
        .then(product => new Product(product))
        .catch(error => console.log(error));
   }	
}
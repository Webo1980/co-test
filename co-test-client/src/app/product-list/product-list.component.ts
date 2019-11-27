import { Component, OnInit } from '@angular/core';
import { Product, ProductService } from '../product.service';
import 'rxjs/Rx';

@Component({
    selector: 'app-product-list',
    templateUrl: './product-list.component.html',
    styleUrls: ['./product-list.component.css']
})

export class ProductListComponent implements OnInit {
    products: Product[];
    errorMessage: string;
    isLoading: boolean = true;

    constructor(private productService: ProductService) {}

    ngOnInit() {
        this.getProducts();
    }

    getProducts() {
        this.productService
            .getProducts()
            .subscribe(
                products => {
                    this.products = products;
                    this.isLoading = false;
                },
                error => this.errorMessage = <any>error
            );
    }

    findProduct(id): Product {
        return this.products.find(product => product.id === id);
    }


}
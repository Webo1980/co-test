import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, Params } from '@angular/router';
import 'rxjs/add/operator/switchMap';
import { Product, ProductService } from '../product.service';

@Component({
    selector: 'app-product-details',
    templateUrl: './product-details.component.html',
    styleUrls: ['./product-details.component.css']
})
export class ProductDetailsComponent implements OnInit {
    product: Product;
    constructor(private route: ActivatedRoute,
                private router: Router,
                private productService: ProductService) { }

    ngOnInit(): void {
        this.route.params
            .switchMap((params: Params) => 
                   this.productService.getById(params['id']))
            .subscribe((product :Product) => this.product = product);
    }
}
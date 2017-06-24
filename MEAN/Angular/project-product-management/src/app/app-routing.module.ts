import { NgModule } from '@angular/core';
import { HomePageComponent } from './home-page/home-page.component';
import { ProductsListComponent } from './products-list/products-list.component';
import { CreateNewProductComponent } from './create-new-product/create-new-product.component';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [

  {path: '', redirectTo: 'home', pathMatch: 'full'},
  {path: 'home', component: HomePageComponent},
  {path: 'product_list', component: ProductsListComponent},
  {path: 'product_creation', component: CreateNewProductComponent},
    
    
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

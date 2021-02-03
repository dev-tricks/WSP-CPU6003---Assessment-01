import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {RouterModule, Routes} from '@angular/router';
import {UrlPermission} from './view/security/urlPermission/url.permission';
import {LoginComponent} from './view/security/login/login.component';
import { SupplierComponent } from './view/master/supplier/supplier.component';
import {OrderComponent} from './view/master/order/order.component';

const routes: Routes = [
  {
    path: 'suppliers',
    component: SupplierComponent,
    canActivate: [UrlPermission]
  },
  {
    path: 'orders',
    component: OrderComponent,
    canActivate: [UrlPermission]
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {path: '**', redirectTo: '/login'}
];

@NgModule({
  exports: [RouterModule],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  declarations: []
})
export class AppRoutingModule {
}

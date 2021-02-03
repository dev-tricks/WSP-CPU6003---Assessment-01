import {BrowserModule} from '@angular/platform-browser';
import {NgModule, CUSTOM_ELEMENTS_SCHEMA} from '@angular/core';

import {AppComponent} from './app.component';
import {FooterComponent} from './view/common/footer/footer.component';
import {HeaderComponent} from './view/common/header/header.component';
import {NavigationComponent} from './view/common/navigation/navigation.component';
import {SnotifyModule, SnotifyService, ToastDefaults} from 'ng-snotify';
import {NgxPaginationModule} from 'ngx-pagination';
import {AppRoutingModule} from './app-routing.module';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {NgxSmartModalModule} from 'ngx-smart-modal';
import {platformBrowserDynamic} from '@angular/platform-browser-dynamic';
import {LoginComponent} from './view/security/login/login.component';
import {UrlPermission} from './view/security/urlPermission/url.permission';
import {AccountService} from './view/security/services/account.service';
import {AuthService} from './view/security/services/auth.service';
import {HashLocationStrategy, LocationStrategy} from '@angular/common';
import {FilterPipe} from './pipe/filter-pipe';
import {SupplierComponent} from './view/master/supplier/supplier.component';
import {NgxSpinnerModule} from 'ngx-spinner';
import {CommonService} from './view/master/supplier/service/common.service';
import {OrderComponent} from './view/master/order/order.component';

@NgModule({
  declarations: [
    AppComponent,
    FooterComponent,
    HeaderComponent,
    NavigationComponent,
    FilterPipe,
    LoginComponent,
    SupplierComponent,
    OrderComponent
  ],
  imports: [
    BrowserModule,
    SnotifyModule,
    NgxPaginationModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    NgbModule.forRoot(),
    NgxSmartModalModule.forRoot(),
    NgxSpinnerModule,
  ],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
  providers: [
    {provide: LocationStrategy, useClass: HashLocationStrategy},
    {
      provide: 'SnotifyToastConfig',
      useValue: ToastDefaults
    },
    SnotifyService,
    AuthService,
    AccountService,
    CommonService,
    UrlPermission],
  bootstrap: [AppComponent]
})
export class AppModule {
}

platformBrowserDynamic().bootstrapModule(AppModule).then(ref => {
  if (window['ngRef']) {
    window['ngRef'].destroy();
  }
  window['ngRef'] = ref;
}).catch(err => console.error(err));

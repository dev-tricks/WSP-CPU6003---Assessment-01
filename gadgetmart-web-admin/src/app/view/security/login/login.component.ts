import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {User} from '../model/model.user';
import {AuthService} from '../services/auth.service';
import {Router} from '@angular/router';
import {NgxSpinnerService} from 'ngx-spinner';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  encapsulation: ViewEncapsulation.None
})
export class LoginComponent implements OnInit {
  user: User = new User();
  errorMessage: string;

  constructor(private authService: AuthService,
              private spinner: NgxSpinnerService,
              private router: Router) {
  }

  ngOnInit() {
  }

  login() {
    this.spinner.show();
    this.authService.logIn(this.user)
      .subscribe(data => {
          const user = data.principal;
          if (user) {
            localStorage.setItem('currentUser', JSON.stringify(user));
          }
          this.router.navigate(['/suppliers']);
          this.spinner.hide();
        }, err => {
          this.spinner.hide();
          this.errorMessage = 'error :  Username or password is incorrect';
        }
      );
  }
}

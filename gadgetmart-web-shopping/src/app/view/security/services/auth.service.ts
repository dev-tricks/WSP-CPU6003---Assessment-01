import {Injectable} from '@angular/core';
import {User} from '../model/model.user';
import {AppSettings} from '../../../settings/app-settings';
import {HttpClient, HttpHeaders} from '../../../../../node_modules/@angular/common/http';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/map';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private http: HttpClient) {
  }

  public logIn(user: User): Observable<any> {
    var base64Credential: string = btoa(user.username + ':' + user.password);
    const httpOptions = {
      headers: new HttpHeaders({
        'Accept': 'application/json',
        'Authorization': 'Basic ' + base64Credential
      })
    };
    return this.http.get<any>(AppSettings.API_ENDPOINT + '/api/gadgetmart/v1/account/login', {headers: httpOptions.headers});
  }

  logOut(): Observable<any> {
    return this.http.post<any>(AppSettings.API_ENDPOINT + 'logout', null);
  }
}

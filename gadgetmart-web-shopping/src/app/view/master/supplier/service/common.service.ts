import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Supplier} from '../model/supplier';
import {AppSettings} from 'src/app/settings/app-settings';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommonService {

  constructor(private http: HttpClient) {
  }

  public findAll(): Observable<Supplier[]> {
    return this.http.get<Supplier[]>(AppSettings.API_ENDPOINT + '/api/gadgetmart/v1/supplier/list');
  }

  public save(doctor: Supplier): Observable<Supplier> {
    return this.http.post<Supplier>(AppSettings.API_ENDPOINT + '/api/gadgetmart/v1/supplier/save', doctor);
  }

  public delete(id: number): Observable<Supplier> {
    return this.http.delete<Supplier>(AppSettings.API_ENDPOINT + '/api/gadgetmart/v1/supplier/delete' + id);
  }

}

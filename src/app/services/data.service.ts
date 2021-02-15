import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class DataService {

  constructor(private http:Http) { }

  getJSON(link){
    return this.http.get(link)
      .map(res => res.json());
  }

  postData(link,data){
    const headers = new Headers();
    headers.append('Content-Type','application/json; charset=UTF-8');
    // headers.append('Access-Control-Allow-Origin','http://localhost:4200');
    // headers.append('Accept', 'application/json');
    return this.http.post(link,data,{ headers, withCredentials: true } )
      .map(res => res.json());
  }

}

import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { DataService } from './data.service';
import 'rxjs/add/operator/filter';
import * as auth0 from 'auth0-js';

@Injectable()
export class AuthService {

  userProfile: any;

  auth0 = new auth0.WebAuth({
    clientID: 'y3qvS3e5dew0P82P4L6BY9Rnkn6NJbIz',
    domain: 'dev-tp3l5wav.us.auth0.com',
    responseType: 'token id_token',
    //audience: 'https://dev-tp3l5wav.auth0.com/userinfo',
     redirectUri: 'http://localhost:4200/callback',
    //redirectUri: 'https://conor.ieeevesit.org/callback',
    // redirectUri: 'https://oth.ieeevesit.org/othesting/callback',
    scope: 'openid profile email',
    leeway: 30
  });

  constructor(
    public router: Router,
    public data: DataService
  ) { }

  public login(): void {
    this.auth0.authorize();
  }

  public handleAuthentication(): void {
    this.auth0.parseHash((err, authResult) => {
      if (authResult && authResult.accessToken && authResult.idToken) {
        window.location.hash = '';
        this.setSession(authResult);
        this.router.navigate(['/profile']);
      } else if (err) {
        //this.router.navigate(['/home']);
        console.log(err);
      }
      console.log("2")
      this.router.navigate(['/profile']);
    });
  }

  private setSession(authResult): void {
    // Set the time that the access token will expire at
    const expiresAt = JSON.stringify((authResult.expiresIn * 1000) + new Date().getTime());
    localStorage.setItem('access_token', authResult.accessToken);
    localStorage.setItem('id_token', authResult.idToken);
    localStorage.setItem('expires_at', expiresAt);
  }

  public logout(): void {
    // Remove tokens and expiry time from localStorage
    localStorage.removeItem('access_token');
    localStorage.removeItem('id_token');
    localStorage.removeItem('expires_at');
    this.data.postData("https://oth.ieeevesit.org/oth1-1819-back/logout.php",{user_id: "this.profile.sub"}).subscribe(res => {

    });
    // Go back to the home route
    this.router.navigate(['/home']);
  }

  public isAuthenticated(): boolean {
    // Check whether the current time is past the
    // access token's expiry time
    const expiresAt = JSON.parse(localStorage.getItem('expires_at'));
    return new Date().getTime() < expiresAt;
  }

  public getProfile(cb): void {
    const accessToken = localStorage.getItem('access_token');
    if (!accessToken) {
      throw new Error('Access token must exist to fetch profile');
    }

    const self = this;
    this.auth0.client.userInfo(accessToken, (err, profile) => {
      if (profile) {
        self.userProfile = profile;
      }
      cb(err, profile);
    });
  }

}

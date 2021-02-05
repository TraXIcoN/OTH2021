import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-satan',
  templateUrl: './satan.component.html',
  styleUrls: ['./satan.component.scss']
})
export class SatanComponent implements OnInit {

  profile: any;

  constructor(
    public auth: AuthService,
    public data: DataService
  ) { }

  ngOnInit() {
    if (this.auth.userProfile) {
      this.profile = this.auth.userProfile;
      this.pushSatan();
    } else {
      this.auth.getProfile((err, profile) => {
        this.profile = profile;
        this.pushSatan();
      });
    }
  }

  pushSatan(){
    this.data.postData("https://localhost/oth1-1819-back/satan.php",{user_id: this.profile.sub}).subscribe(res => {
    })
  }

}

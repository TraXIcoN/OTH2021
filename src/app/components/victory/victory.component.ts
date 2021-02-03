import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-victory',
  templateUrl: './victory.component.html',
  styleUrls: ['./victory.component.scss']
})
export class VictoryComponent implements OnInit {
  profile: any;
  validate: boolean = false;

  constructor(
    public auth: AuthService,
    public data: DataService,
    private router: Router
  ) { }

  ngOnInit() {
    if (this.auth.userProfile) {
      this.profile = this.auth.userProfile;
      this.getQuestion();
    } else {
      this.auth.getProfile((err, profile) => {
        this.profile = profile;
        this.getQuestion()
      });
    }
  }

  getQuestion(){
    this.data.postData("https://localhost:4200/oth1-1819-back/satan.php",{user_id:this.profile.sub}).subscribe(res => {
      if(res.cur_ques != 95){
        this.router.navigate(["/profile"]);
      }
      else{
        this.validate = true;
      }
    })
  }

}

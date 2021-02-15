import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-loss',
  templateUrl: './loss.component.html',
  styleUrls: ['./loss.component.scss']
})
export class LossComponent implements OnInit {
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
    this.data.postData("../../../../oth1-1819-back/quesloader.php",{user_id:this.profile.sub}).subscribe(res => {
      if(res.cur_ques != 94){
        this.router.navigate(["/profile"]);
      }
      else{
        this.validate = true;
      }
    })
  }
}

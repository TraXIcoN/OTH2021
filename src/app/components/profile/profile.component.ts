import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  profile: any;
  completed: number;
  cp: any;
  // link:string = "ieeevesit.org";
  // link:string = "localhost/ieee";
  link: string = "localhost";

  constructor(
    public auth: AuthService,
    public data: DataService,
    private router: Router
  ) { }

  ngOnInit() {
    console.log("in");
    if (this.auth.userProfile) {
      this.profile = this.auth.userProfile;
      this.getQuestion();
    } else {
      this.auth.getProfile((err, profile) => {
        this.profile = profile;
        this.getQuestion();
      });
    }
  }

  submit(){
    if(this.cp.name.length > 6){
      if(this.cp.nickname.length > 6){
        if(this.cp.phone != null){
          if(Math.floor(this.cp.phone/1000000000) >= 1){
            if(this.cp.class != "Select"){
              // console.log(this.cp);
              // "/oth1-1819-back/update_user.php"
              this.data.postData("http://"+this.link+"/oth1-1819-back/update_user.php",this.cp).subscribe(res => {
                if(res.cur_ques >= 1){
                  //console.log("Next");
                  this.router.navigate(['/game']);
                }
                //console.log(res);
              });
            }
            else{
              alert("Select your class");
            }
          }
          else{
            alert("Man phone numbers are 10 digits long");
          }
        }
        else{
          alert("Man phone numbers are 10 digits long");
        }
      }
      else{
        alert("We might need a 6 letter long Hackername");
      }
    }
    else{
      alert("Enter a proper name man");
    }

  }

  getQuestion(){
    var pro = {
      nickname:this.profile.nickname,
      email:this.profile.email,
      user_id:this.profile.sub
    }
    // '/oth1-1819-back/signup.php'
    this.data.postData('http://'+this.link+'/oth1-1819-back/signup.php',pro).subscribe(data => {
      //console.log(data);
      this.completed = data.completed;
      if(this.completed == 0){
        this.cp = {
          email : this.profile.email,
          nickname : this.profile.nickname,
          phone: null,
          class: "Select",
          name: this.profile.name,
          user_id: this.profile.sub
        }
      }
      else{
        if(data.cur_ques >= 1){
          this.router.navigate(['/game']);
        }
      }
    })
  }
}

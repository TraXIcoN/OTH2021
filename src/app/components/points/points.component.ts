import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';

@Component({
  selector: 'app-points',
  templateUrl: './points.component.html',
  styleUrls: ['./points.component.scss']
})
export class PointsComponent implements OnInit {

  profile: any;
  points: any;
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
      this.getPoints();
    } else {
      this.auth.getProfile((err, profile) => {
        this.profile = profile;
        this.getPoints();
      });
    }
  }

  getPoints(){
    console.log("in points")
    // '/oth1-1819-back/signup.php'
    this.data.postData('http://'+this.link+'/oth1-1819-back/showpoints.php',{user_id:this.profile.sub}).subscribe(data => {
    console.log(data)
    this.points = data.points
  })
    
  };

}

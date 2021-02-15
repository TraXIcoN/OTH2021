import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';


@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss']
})
export class NavbarComponent implements OnInit {

  toggleColor:boolean;
  exist:boolean = false;

  constructor(
    public auth: AuthService
  ) {
    console.log("Router link",window.location.href);
  }

  ngOnInit() {
    var getDispl = localStorage.getItem("particles");
    if(getDispl == null){
      this.toggleColor = true;
      localStorage.setItem("particles",'true');
      getDispl = localStorage.getItem("particles");
      this.exist = true;
    }
    else if( getDispl == 'false'){
      this.toggleColor = false;
      this.exist = true;
    }
    else if( getDispl == 'true'){
      this.toggleColor = true;
      this.exist = true;
    }
  }

  toggle(){
    var getDispl = localStorage.getItem("particles");
    if(getDispl == 'false'){
      localStorage.setItem("particles",'true');
    }
    else{
      localStorage.setItem("particles",'false');
    }
    window.location.href = window.location.href;
  }

}

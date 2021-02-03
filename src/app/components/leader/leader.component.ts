import { Component, OnInit, OnDestroy } from '@angular/core';
import { DataService } from '../../services/data.service';
import { IntervalObservable } from "rxjs/observable/IntervalObservable";
import { Observable } from "rxjs";

@Component({
  selector: 'app-leader',
  templateUrl: './leader.component.html',
  styleUrls: ['./leader.component.scss']
})
export class LeaderComponent implements OnInit,OnDestroy {

  // link:string = "localhost/ieee";
  link: string = "localhost:4200";
  leaders: any;
  Obs: any;

  constructor(
    public data: DataService
  ) { }

  ngOnInit() {
    this.data.getJSON("http://"+this.link+"/oth1-1819-back/leader.php").subscribe(res => {
      //console.log(res);
      if(res.length > 3){
        this.leaders = res.slice(0,10);
      }
      else{
        this.leaders = res;
      }
      //console.log(this.leaders);
    });
    this.Obs = IntervalObservable.create(10000)
        .subscribe(() => {
          this.data.getJSON("http://"+this.link+"/oth1-1819-back/leader.php").subscribe(res => {
            //console.log(res);
            if(res.length > 3){
              this.leaders = res.slice(0,10);
            }
            else{
              this.leaders = res;
            }
          });
        });
  }

  ngOnDestroy(){
    if(this.Obs != undefined){
      this.Obs.unsubscribe();
    }
  }

}

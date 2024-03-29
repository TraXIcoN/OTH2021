import { Component, OnInit, ViewChild, ElementRef, AfterViewInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { DataService } from '../../services/data.service';
declare var Typed:any;
@Component({
  selector: 'app-game',
  templateUrl: './game.component.html',
  styleUrls: ['./game.component.scss']
})
export class GameComponent implements OnInit, AfterViewInit  {
  @ViewChild('story') story: ElementRef;
  @ViewChild('cstory') cstory: ElementRef;
  profile: any;
  question: any;
  butstr: boolean;
  showbutstr: boolean = false;
  answer: String = null;
  transmission: boolean = true;
   link:string = "localhost";
  //link: string = "conor.ieeevesit.org";

  loading: boolean = true;
  progress: string = "progress: --";
  prognum: number = 0;
  tmach: number = 0;
  showcong: boolean = true;
  showcontinue: boolean = false;

  constructor(
    public auth: AuthService,
    public data: DataService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  ngAfterViewInit(){
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
    this.loading = true;
    this.transmission = true;
    this.data.postData("http://"+this.link+"/oth1-1819-back/quesloader.php",{user_id:this.profile.sub}).subscribe(res => {
      this.transmission = false;
      //console.log(res);
      this.question = res;
      if(res.cur_ques == -1){
        this.router.navigate["/profile"];
      }
      if(res.cur_ques == 95){
        //console.log("Winner");
        this.router.navigate(['/victory']);
      }
      
      if(res.type == 2){
        this.butstr = true;
      }
      // if(res.cur_ques > 1) {
      //   this.tmach = Math.floor((res.cur_ques - 2) / 0.16);
      //   if(this.tmach > 100)
      //     this.tmach = 100;

      //   if(res.cur_ques > 37)
      //     this.prognum = Math.floor((res.cur_ques - 2) / 0.66);
      //   else
      //     this.prognum = Math.floor((res.cur_ques - 2) / 0.37);

      //   if(res.cur_ques > 4 && res.cur_ques < 21)
      //     this.progress = "time machine health: " + this.tmach + "%";
      //   else
      //   this.progress = "progress: " + this.prognum + "%";
      // }
    })
  }

  showstrdisp(){
    var story = document.getElementById('story');
    //console.log(this.question.question);
    //console.log("typed",Typed);
    var self = this;
    document.getElementById('story').innerHTML = '';
    var typed = new Typed(this.story.nativeElement, {
      strings: [
        this.question.question
      ],
      typeSpeed: 5,
      loop:false,
      cursorChar: '_',
      onComplete(){
        //console.log("Here",self);
        self.yo();
        // document.getElementById('story').innerHTML = '';
      }
    });
    //console.log(typed);
  }

  typeCongrats() {
    var cstory = document.getElementById('cstory');
    var self = this;
    document.getElementById('cstory').innerHTML = '';
    var typed = new Typed(this.cstory.nativeElement, {
      strings: [
        "Congratulations! You just saved the wor...."
      ],
      typeSpeed: 70,
      loop:false,
      cursorChar: '',
      onComplete(){
        //console.log("Here",self);
        self.yolo();
        // document.getElementById('story').innerHTML = '';
      }
    });
  }

  showmsg(){
    this.butstr = false;
    this.showstrdisp();
  }

  showcongo() {
    this.showcong = false;
    var self = this;
    setTimeout(function() {
      self.typeCongrats();
    }, 100);
    // this.typeCongrats();
  }

  yo(){
    this.showbutstr = true;
  }

  yolo(){
    this.showcontinue = true;
  }

  submit(value){
    if(this.question.type == '2'){
      document.getElementById('story').innerHTML = '';
      document.getElementsByClassName('typed-cursor')[0].innerHTML='';
    }

    this.showbutstr = false;
    this.data.postData("http://"+this.link+"/oth1-1819-back/checkques.php",{user_id:this.profile.sub,ans: value.toLowerCase()}).subscribe(res => {
      console.log(this.question.type);
      // console.log(this.question.id);
      console.log(res);
      console.log(res.cur_ques);
      console.log(res.attempt);
      if(res.correct == 'false'){    
        // if(this.question.id == 15){
        //   this.router.navigate["/home"];
        // //this.getQuestion();
        // }
        alert("Oops that is not correct");
        if(res.cur_ques == 4 && res.attempt == 1){
          window.location.reload(true);
        //this.getQuestion();
        }
        if(res.cur_ques == 94 && res.attempt == 2){
          this.router.navigate(['/loss']);
        }
      }
      else{
        if(this.question.type != "2" && this.question.type != "4")
          alert("I didn't expect that to be correct");
        //console.log("Here");
        this.getQuestion();
        this.answer = null;
      }
    });
  }

  split(next){
    //console.log(next);
    this.data.postData("http://"+this.link+"/oth1-1819-back/selector.php",{user_id:this.profile.sub,ques_no: this.question.cur_ques,ques_shift: next}).subscribe(res => {
      //console.log(res);
      this.getQuestion();
    });
  }

  onLoad() {
    this.loading = false;
  }
}

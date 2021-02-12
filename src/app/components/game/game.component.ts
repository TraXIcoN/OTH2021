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
  hint: any;
  trust: any;
  info: any;
  img: boolean = false;
  correct: number = 0;
  check: any;
  butstr: boolean;
  showbutstr: boolean = false;
  answer: String = null;
  transmission: boolean = true;
  image: String = "http://";
  link:string = "localhost";
  showModal: boolean = false;
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
      this.getHint();
      this.getInfo();
    } else {
      this.auth.getProfile((err, profile) => {
        this.profile = profile;
        this.getQuestion();
        this.getHint();
        this.getInfo();

      });
    }
  }


  //This function is for capturing the trust value chosen by the user
  getTrust(val){
    this.data.postData("http://"+this.link+"/oth1-1819-back/points.php",{user_id:this.profile.sub, trust: val}).subscribe(res => {
      console.log("This is the trust log");
      console.log(res);
      this.trust = res;
    });
  }

  getInfo(){
    this.data.postData("http://"+this.link+"/oth1-1819-back/character.php",{user_id:this.profile.sub}).subscribe(res => {
      this.info = res;
    })

  }
  getHint(){
    this.data.postData("http://"+this.link+"/oth1-1819-back/hintloader.php",{user_id:this.profile.sub}).subscribe(res => {
      this.hint = res;
    })
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
      if(res.type == 5){
        this.img = true;
        this.image = this.image + res.question;
        console.log(this.image);
      }
    })
  }

  checkTrial() {
    console.log("trials ",this.correct)
    if (this.correct >= 2) {
      this.data.postData("http://"+this.link+"/oth1-1819-back/checkpoint.php",{user_id:this.profile.sub}).subscribe(res => {
       /*  if(confirm('Failed')){
          window.location.reload();  
      } */

      alert('You have failed at your quest'); 
      this.redirect();

      });
    }
  }

  redirect(){
    window.location.reload();
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

  function_enclosure(value) {
    this.submit(value);
    this.checkTrial();
  }

  submit(value){
    if(this.question.type == '2'){
      document.getElementById('story').innerHTML = '';
      document.getElementsByClassName('typed-cursor')[0].innerHTML='';
    }
    
    this.showbutstr = false;
    this.data.postData("http://"+this.link+"/oth1-1819-back/checkques.php",{user_id:this.profile.sub,ans: value.toLowerCase()}).subscribe(res => {
      //console.log(this.question.type);
      // console.log(this.question.id);
      //console.log(res);

      if(res.correct == 'false'){
        // if(this.question.id == 15){
        //   this.router.navigate["/home"];
        // //this.getQuestion();
        // }
        this.correct += 1;
        alert("Oops that is not correct");
        this.checkTrial();
        
      }
      else{
        if(this.question.type != "2" && this.question.type != "4"){
          alert("I didn't expect that to be correct");
        //console.log("Here");
        this.getQuestion();
        this.answer = null;
      }
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

import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../services/auth.service';
declare var jquery: any;
declare var $: any;

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  anim: boolean = false;

  constructor(
    public auth: AuthService
  ) { }

  ngOnInit() {
    // "use strict";
    // var a = 0;

    // for (; a < 100; a += 1) {
    //   setTimeout(function b() {
    //     var a = Math.random() * 1e3 + 5e3,
    //       c = $("<div />", {
    //         "class": "smoke",
    //         css: {
    //           left: Math.random() * $("#wrap").width(),
    //           backgroundSize: "contain",
    //           width: Math.random() * 800,
    //           height: Math.random() * 800
    //         }
    //       });
    //     $(c).appendTo("#viewport");
    //     $.when($(c).animate({}, {
    //         duration: a / 4,
    //         easing: "linear",
    //         queue: false,
    //         complete: function() {
    //           $(c).animate({}, {
    //             duration: a / 3,
    //             easing: "linear",
    //             queue: false
    //           })
    //         }
    //       }),
    //       $(c).animate({
    //         bottom: $("#wrap").height()
    //       }, {
    //         duration: a*1.5,
    //         easing: "linear",
    //         queue: false
    //       })).then(
    //       function() {
    //         $(c).remove();
    //         // b()
    //       })
    //   }, Math.random() * 3e3)
    // }
    // // this.anim = false;
    // var self = this;
    // setTimeout(function(){
    //   self.anim = false;
    //   setTimeout(function(){
    //     $('.av-pad').fadeIn(600);
    //   }, 100);
    // }, 9000);
  }

}

import { Component, OnInit } from '@angular/core';
import { AuthService } from './services/auth.service';
declare var Typed:any;
declare var particlesJS:any;
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit{
  title = 'app';
  link:string = 'ieeevesit.org';

  constructor(public auth: AuthService) {
    auth.handleAuthentication();
  }

  ngOnInit(){
    // //console.log("typed",Typed);
    // var typed = new Typed(".element", {
    //   strings: [
    //     "Lorem ipsum dolor sit amet, consectetur adipisicing elit, <br>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat <br>cupidatat non proident, sunt in culpa qui officia deserunt mollit <br>anim id est laborum."
    //   ],
    //   typeSpeed: 10,
    //   loop:false
    // });
    var getDispl = localStorage.getItem("particles");
    if(getDispl == null){
      var particles = true;
      localStorage.setItem("particles",'true');
      getDispl = localStorage.getItem("particles");
    }

    if(getDispl != 'false'){
      //console.log(window.innerWidth);
      var value = 35;
      var linkWidth = 1.5;
      var dotRad = 5;
      var linkMax = 200;
      if(window.innerWidth > 900 && (window.innerWidth > window.innerHeight)){
        value = 140;
        linkWidth = 1;
        dotRad = 3;
        linkMax = 150;
      }
      //console.log(value);
      /*particlesJS("particles-js", {
        "particles": {
        "number": {
        "value": value,
        "density": {
        "enable": false,
        "value_area": 800
        }
        },
        "color": {
          "value": "#00ff69"
        },
        "shape": {
          "type": "circle",
          "stroke": {
            "width": 0,
            "color": "#000000"
          },
          "polygon": {
            "nb_sides": 5
          },
          "image": {
            "src": "img/github.svg",
            "width": 100,
            "height": 100
          }
        },
        "opacity": {
          "value": 0.5,
          "random": false,
          "anim": {
            "enable": false,
            "speed": 1,
            "opacity_min": 0.1,
            "sync": false
          }
        },
        "size": {
          "value": dotRad,
          "random": true,
          "anim": {
            "enable": false,
            "speed": 40,
            "size_min": 0.1,
            "sync": false
          }
        },
        "line_linked": {
          "enable": true,
          "distance": linkMax,
          "color": "#00ff2d",
          "opacity": 0.4,
          "width": linkWidth
        },
        "move": {
        "enable": true,
        "speed": 6,
        "direction": "none",
        "random": false,
        "straight": false,
        "out_mode": "out",
        "bounce": false,
        "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 1200
        }
        }
        },
        "interactivity": {
        "detect_on": "window",
        "events": {
        "onhover": {
        "enable": false,
        "mode": "grab"
        },
        "onclick": {
        "enable": false,
        "mode": "push"
        },
        "resize": true
        },
        "modes": {
        "grab": {
        "distance": 140,
        "line_linked": {
          "opacity": 1
        }
        },
        "bubble": {
        "distance": 400,
        "size": 40,
        "duration": 2,
        "opacity": 8,
        "speed": 3
        },
        "repulse": {
        "distance": 200,
        "duration": 0.4
        },
        "push": {
        "particles_nb": 4
        },
        "remove": {
        "particles_nb": 2
        }
        }
        },
        "retina_detect": true
      }); */
      /*
      particlesJS("particles-js", {
        particles: {
          number: { value: 400, density: { enable: true, value_area: 3000 } },
          // color: { value: "#ff000a" },
          color: { value: "#d46e15" },
          shape: {
            type: "circle",
            stroke: { width: 0, color: "#000000" },
            polygon: { nb_sides: 3 },
            image: { src: "img/github.svg", width: 100, height: 100 }
          },
          opacity: {
            value: 1,
            random: true,
            anim: { enable: false, speed: 1, opacity_min: 0.1, sync: false }
          },
          size: {
            value: 3.5,
            random: true,
            anim: { enable: true, speed: 5, size_min: 1, sync: false }
          },
          line_linked: {
            enable: true,
            distance: 50,
            // color: "#ff000a",
            color: "#d46e15",
            opacity: 0.4,
            width: 2
          },
          move: {
            enable: true,
            // speed: 7.8914764163227265,
            speed: 2,
            direction: "top",
            random: true,
            straight: false,
            out_mode: "out",
            bounce: false,
            attract: { enable: false, rotateX: 600, rotateY: 1200 }
          }
        },
        interactivity: {
          detect_on: "window",
          events: {
            onhover: { enable: false, mode: "bubble" },
            onclick: { enable: false, mode: "repulse" },
            resize: true
          },
          modes: {
            grab: { distance: 400, line_linked: { opacity: 0.5 } },
            bubble: { distance: 400, size: 4, duration: 0.3, opacity: 1, speed: 3 },
            repulse: { distance: 200, duration: 0.4 },
            push: { particles_nb: 4 },
            remove: { particles_nb: 2 }
          }
        },
        retina_detect: true
      });
      */
    }

    // if(getDispl == 'false'){
    //   // var self = window;
    //   //
    //   window['pJSDom'].pJS.fn.vendors.destroypJS();
    //   //console.log("Here kids");
    //   // if (window["pJSDom"] instanceof Array && window["pJSDom"].length > 0) {
    //   //     for (let i = 0; i < window["pJSDom"].length; i++)
    //   //         window["pJSDom"][i].pJS.fn.vendors.destroypJS();
    //   //     window["pJSDom"] = [];
    //   // }
    // }
  }
}

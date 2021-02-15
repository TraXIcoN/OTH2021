import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ieeehome',
  templateUrl: './ieeehome.component.html',
  styleUrls: ['./ieeehome.component.scss']
})
export class IeeehomeComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    // TODO: prod: change the path of window.location.href accordingly
    // window.location.href = 'https://conor.ieeevesit.org/home';
    window.location.href = 'http://localhost:4200/home';
  }

}

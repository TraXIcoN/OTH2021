import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { IeeehomeComponent } from './components/ieeehome/ieeehome.component';
import { HomeComponent } from './components/home/home.component';
import { CallbackComponent } from './components/callback/callback.component';
import { AuthService } from './services/auth.service';
import { DataService } from './services/data.service';
import { ProfileComponent } from './components/profile/profile.component';
import { AuthGuard } from './guards/auth.guard';
import { NavbarComponent } from './components/navbar/navbar.component';
import { GameComponent } from './components/game/game.component';
import { VictoryComponent } from './components/victory/victory.component';
import { LeaderComponent } from './components/leader/leader.component';
import { SatanComponent } from './components/satan/satan.component';
import { FooterComponent } from './components/footer/footer.component';
import { LossComponent } from './components/loss/loss.component';

@NgModule({
  declarations: [
    AppComponent,
    IeeehomeComponent,
    HomeComponent,
    CallbackComponent,
    ProfileComponent,
    NavbarComponent,
    GameComponent,
    VictoryComponent,
    LeaderComponent,
    SatanComponent,
    FooterComponent,
    LossComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpModule,
    FormsModule
  ],
  providers: [
    AuthService,
    AuthGuard,
    DataService

  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

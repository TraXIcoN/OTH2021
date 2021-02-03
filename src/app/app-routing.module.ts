import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { IeeehomeComponent } from './components/ieeehome/ieeehome.component';
import { HomeComponent } from './components/home/home.component';
import { CallbackComponent } from './components/callback/callback.component';
import { ProfileComponent } from './components/profile/profile.component';
import { AuthGuard } from './guards/auth.guard';
import { GameComponent } from './components/game/game.component';
import { VictoryComponent } from './components/victory/victory.component';
import { SatanComponent } from './components/satan/satan.component';
import { LossComponent } from './components/loss/loss.component';

const routes: Routes = [
  {
    path: '',
    component: IeeehomeComponent
  },
  {
    path: 'home',
    component: HomeComponent
  },
  {
    path:'callback',
    component: CallbackComponent
  },
  {
    path:'profile',
    component: ProfileComponent,
    canActivate: [AuthGuard]
  },
  {
    path:'game',
    component: GameComponent,
    canActivate: [AuthGuard]
  },
  {
    path:'victory',
    component: VictoryComponent,
    canActivate: [AuthGuard]
  },
  {
    path:'loss',
    component: LossComponent,
    canActivate: [AuthGuard]
  },
  // {
  //   path:'666',
  //   component: SatanComponent,
  //   canActivate: [AuthGuard]
  // }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

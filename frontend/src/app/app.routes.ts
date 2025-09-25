import { Routes } from '@angular/router';
import { Home } from './components/home/home';
import { Map } from './components/map/map';
import { PageNotFound } from './components/page-not-found/page-not-found';

export const routes: Routes = [
    { path: '',   redirectTo: '/home', pathMatch: 'full' }, // redirect to `first-component`
    {path: 'home', component: Home, pathMatch: 'full'},
    {path: 'map/:store/:product', component: Map, pathMatch: 'full'},
    { path: '**', component: PageNotFound }, 
];

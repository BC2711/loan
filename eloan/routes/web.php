<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/home', function () {
    return view('dashboard');
});

Route::get('/login', function () {
    return view('login.login');
});

Route::get('/individual', function () {
    return view('account.individual');
});

Route::get('/agent', function () {
    return view('account.agent');
});
Route::get('/user', function () {
    return view('management.user');
});

Route::get('/createIndividual', function () {
    return view('account.createIndividual');
});

Route::get('/permission', function () {
    return view('management.permission');
});

Route::get('/systemUser', function () {
    return view('management.createsystemuser');
});



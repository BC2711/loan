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






/**
 * Accounts
 */

 Route::get('/agent', function () {
    return view('account.agent');
});
Route::get('/request', function () {
    return view('account.accountrequest');
});
Route::get('/agents', function () {
    return view('account.agents');
});

 Route::get('/individual', function () {
    return view('account.individual');
});

Route::get('/createIndividual', function () {
    return view('account.createIndividual');
});
Route::get('/createagent', function () {
    return view('account.createagent');
});

Route::get('/merchant', function () {
    return view('account.merchant');
});
Route::get('/merchants', function () {
    return view('account.merchants');
});
Route::get('/merchantoutlet', function () {
    return view('account.merchantoutlets');
});

Route::get('/merchantemployees', function () {
    return view('account.merchantemployee');
});
Route::get('/createmerchant', function () {
    return view('account.createmerchant');
});
Route::get('/createmerchantemployee', function () {
    return view('account.createmerchantemployee');
});
Route::get('/createmerchantoutlet', function () {
    return view('account.createmerchantoutlet');
});

Route::get('/agentemployee', function () {
    return view('account.agentemployee');
});
Route::get('/createagentemployee', function () {
    return view('account.createagentemployee');
});
Route::get('/createagentoutlet', function () {
    return view('account.createagentoutlet');
});
Route::get('/agentoutlets', function () {
    return view('account.agentoutlets');
});



/**
 * End Accounts
 */
/**
 * Management
 * 
 */

 Route::get('/user', function () {
    return view('management.user');
});
Route::get('/permission', function () {
    return view('management.permission');
});

Route::get('/systemUser', function () {
    return view('management.createsystemuser');
});

Route::get('/employee', function () {
    return view('management.employee');
});
Route::get('/createemployee', function () {
    return view('management.createemployee');
});

/**
 * End of Mangement
 */

/***
 * Reports
 */
Route::get('/agentcommission', function () {
    return view('reports.agentcommission');
});

Route::get('/loanstatus', function () {
    return view('reports.loanstatus');
});

Route::get('/audit', function () {
    return view('reports.audit');
});
Route::get('/collection', function () {
    return view('reports.collection');
});
Route::get('/compliance', function () {
    return view('reports.compliance');
});
Route::get('/custom', function () {
    return view('reports.custom');
});
Route::get('/customer', function () {
    return view('reports.customer');
});
Route::get('/financial', function () {
    return view('reports.financial');
});
Route::get('/forcasting', function () {
    return view('reports.forcasting');
});
Route::get('/loanoriginator', function () {
    return view('reports.loanoriginator');
});
Route::get('/operation', function () {
    return view('reports.operation');
});
Route::get('/payment', function () {
    return view('reports.payment');
});
Route::get('/risk', function () {
    return view('reports.risk');
});


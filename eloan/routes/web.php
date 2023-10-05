<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndividualController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\RequestController;

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
    return view('layout.login');
});
Route::get('/home', function () {
    return view('dashboard');
});

Route::get('/', function () {
    return view('login.login');
});

Route::post('/login',[LoginController::class, 'login'])->name('login');
Route::post('/logout',[LoginController::class, 'logout'])->name('logout');




/**
 * Accounts
 */
Route::get('/account-request', [RequestController::class, 'index'])->name('account-request');
Route::get('/accounts', [ClientController::class, 'account'])->name('accounts');
Route::get('/clients', [ClientController::class, 'client'])->name('clients');
Route::get('/individuals', [IndividualController::class, 'index'])->name('individuals');
 Route::get('/create-individual', [IndividualController::class, 'create'])->name('create-individual');
 Route::post('/store', [IndividualController::class, 'store'])->name('store');
 Route::get('/cooperative', [ClientController::class, 'index'])->name('cooperative');
 Route::get('/create-cooperative', [ClientController::class, 'create'])->name('create-cooperative');
 Route::get('/edit-cooperative', [ClientController::class, 'edit'])->name('edit-cooperative');
 Route::post('/updatecooperative', [ClientController::class, 'create'])->name('updatecooperative');
 Route::post('/storecooperative', [ClientController::class, 'store'])->name('storecooperative');

 Route::get('/request', [RequestController::class, 'index'])->name('request');
 Route::get('/approve', [RequestController::class, 'index'])->name('approve');

Route::get('/agents', function () {
    return view('account.agents');
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

Route::get('/pending', function () {
    return view('account.pending');
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

Route::get('/sms', function () {
    return view('management.sms');
});

Route::get('/payroll', function () {
    return view('management.payroll');
});

Route::get('/timeattendance', function () {
    return view('management.timeattendance');
});
Route::get('/permission', function () {
    return view('management.permission');
});

Route::get('/emaillogs', function () {
    return view('management.emaillogs');
});

Route::get('/leave', function () {
    return view('management.leave');
});

Route::get('/loan', function () {
    return view('management.loan');
});

Route::get('/loanscope', function () {
    return view('management.loanscope');
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

Route::get('/advances', function () {
    return view('management.advances');
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

Route::get('/library', function () {
    return view('reports.storage');
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

/***
 * EMPLOYEE
 */

 Route::get('/dashboard', function () {
    return view('employee.dashboard');
});

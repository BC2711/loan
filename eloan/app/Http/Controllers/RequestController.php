<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client;
use Illuminate\Support\Facades\DB;
use Spatie\LaravelIgnition\Recorders\DumpRecorder\Dump;

class RequestController extends Controller
{
  public function index()
  {
    $requests = client::query()->latest()->paginate(10);
    return view('account.accountrequest')->with('requests', $requests);
  }
   public function pending($status, $acoount_type)
   {
    $pendings = DB::table('clients')->where('status', '=', $status)->where('account_type','=',$acoount_type)->get();
   
    return view('account.pending',compact('pending', 'pendings'));

   
   }
}

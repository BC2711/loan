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
   public function pending(Request $request, $status, $acoount_type)
   {

    // dd($status, $acoount_type);
    $pendings = DB::table('clients')->where('status', '=', $status)->where('account_type','=',$acoount_type)->paginate(10);
    // dump($pendings);die;
    // return view('account.pending',compact('pending', 'pendings'));
    return view('account.pending')->with('pendings',$pendings);

   
   }
}

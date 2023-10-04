<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client;

class RequestController extends Controller
{
  public function index()
  {
    $requests = client::query()->latest()->paginate(10);
    return view('account.accountrequest')->with('requests', $requests);
  }
   public function pending($id)
   {
    $pendings = client::query()->latest()->paginate(10);
    return view('account.pending')->with( compact('pendings'));

   
   }
}

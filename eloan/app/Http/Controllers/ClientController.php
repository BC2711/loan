<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ClientController extends Controller
{
   public function index()
   {
   return view('account.agent');
   }

   public function create()
   {
    return view('');
   }

   public function store(request $request)
   {

   }

   public function edit()
   {
    return redirect()->route('');
   }

   public function update(Request $request)
   {

   }

   public function destroy()
   {
    
   }
}

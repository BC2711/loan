<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ClientController extends Controller
{
   public function index()
   {
    //
   }

   public function create()
   {
    return redirect()->route('');
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

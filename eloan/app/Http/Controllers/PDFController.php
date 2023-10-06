<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\client;
use PDF;

class PDFController extends Controller
{
    public function Pdf ()
    {
        $users = client::get();
  
        $data = [
            'title' => 'Individuals',
            'date' => date('m/d/Y'),
            'users' => $users
        ]; 
            
        $pdf = PDF::loadView('account.pdf', $data);
     
        return $pdf->download('individuals.pdf');
    }
}

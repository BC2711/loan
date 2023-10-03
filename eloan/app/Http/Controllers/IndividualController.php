<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\client;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class IndividualController extends Controller
{
    public function index()
    {
       return view('account.individual');
    }

    public function create()
    {
        return view('account.createIndividual');
    }

    public function store(request $request)
    {
       
        $user_id = Auth::User()->id;

        $validated = $request->validate(
            [
                'first_name'=>'required',
                'other_name'=>'string',
                'last_name'=>'required',
                'nrc'=>'required',
                'dob'=>'required',
                'age'=>'required',
                'gender'=>'required',
                'disability'=>'required',
                'province'=>'required',
                'district'=>'required',
                'constituency'=>'required',
                'phone_number'=>'required',
                'email'=>'required|unique',
                'tpin'=>'required',
                'physical_address'=>'required'
            ]
            );
       
        dump( $validated); die;

        $individual = new Client();
        $individual->first_name = $validated['first_name'];
       
    }

    public function edit()
    {
        return redirect()->route('');
    }

    public function update(Request $request)
    {
        $validated = $request->validate(
            []
        );
    }

    public function destroy()
    {
    }

    public function validation($request)
    {
        $validated = $request->validate(
            [
                'first_name' => 'required',
                'last_name' => 'required',
                'other_name' => 'string',
                'nrc' => 'required',
                'dob' => 'required',
                'gender' => 'required',
                'disability' => 'required',
                'province' => 'required',
                'district' => 'required',
                'costituency' => 'required',
                'phone_number' => 'required',
                'email' => 'required|email|unique:clients',
                'tpin' => 'required',
                'physical_address' => 'required'
            ],
            [
                'first_name.required' => 'First name is required..!!',
                'last_name.required' => 'Last name is required..!!',
                'nrc.required' => 'NRC is required..!!',
                'dob.required' => 'Date of Birth is required..!!',
                'gender.required' => 'Gender is required..!!',
                'disability.required' => 'Disability is required..!!',
                'province.required' => 'Province is required..!!',
                'district.required' => 'District is required..!!',
                'costituency.required' => 'Constituency is required..!!',
                'phone_number' => 'Phone number is required..!!',
                'email.required' => 'Email Address already Exists..!!',
                'tpin.required' => 'Tpin is required..!!',
                'physical_address.required' => 'Physical Address is required..!!'
            ]
        );
        return $validated;
    }
}

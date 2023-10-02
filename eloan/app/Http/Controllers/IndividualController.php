<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndividualController extends Controller
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
       $validated = $this->validation($request);
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

    public function validation (Request $request)
    {
        $validated = $request->validate(
            [
                'first_name' => 'required',
                'last_name' => 'required',
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

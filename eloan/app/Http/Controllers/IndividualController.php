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
        //
    }

    public function create()
    {
        return redirect()->route('');
    }

    public function store(request $request)
    {
      
        $validated = $this->validation($request);
        echo $validated; die;
        $individual = new Client();
        $individual->first_name = $validated['first_name'];
        $individual->other_name = $validated['other_name'];
        $individual->last_name = $validated['last_name'];
        $individual->name =  $validated['first_name'] . '' . $validated['last_name'];
        $individual->nrc = $validated['nrc'];
        $individual->dob = $validated['dob'];
        $individual->gender = $validated['gender'];
        $individual->age = $validated['age'];
        $individual->disability = $validated['disability'];
        $individual->province = $validated['province'];
        $individual->district = $validated['district'];
        $individual->constituency = $validated['condtituency'];
        $individual->phone_number = $validated['phone_number'];
        $individual->email = $validated['email'];
        $individual->tpin = $validated['tpin'];
        $individual->physical_address = $validated['physical_address'];
        $individual->status = 'PENDING';
        $individual->created_by_id = 1;
        $individual->create()->save();
        return redirect()->route('/home')->with('success', '');
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

    public function validation(Request $request)
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

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
        $individuals = client::query()->latest()->paginate(10);
       return view('account.individual')->with('individuals',$individuals);
    }

    public function create()
    {
        return view('account.createIndividual');
    }

    public function store(request $request)
    {
       
        $user_id = Auth::User()->id;
      
        $validated = $this->validation($request);      
       
        $individual = new Client();
        $individual->name = $validated['first_name'] ." ".$validated['last_name'];
        $individual->first_name = $validated['first_name'];
        $individual->last_name = $validated['last_name'];
        $individual->other_name = $validated['other_name'];
        $individual->nrc = $validated['nrc'];
        $individual->dob = $validated['dob'];
        $individual->age = $validated['age'];
        $individual->gender = $validated['gender'];
        $individual->disability = $validated['disability'];
        $individual->province = $validated['province'];
        $individual->district = $validated['district'];
        $individual->constituency = $validated['constituency'];
        $individual->phone_number = $validated['phone_number'];
        $individual->email = $validated['email'];
        $individual->tpin = $validated['tpin'];
        $individual->physical_address = $validated['physical_address'];
        $individual->status = 'PENDING';
        $individual->created_by_id = $user_id;
        $individual->save();
        return redirect()->route('individuals')->with('success', 'Individual Created successfully, waiting for Approval in Pending Account..');
       
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
                'age' => 'required',
                'dob' => 'required',
                'gender' => 'required',
                'disability' => 'required',
                'province' => 'required',
                'district' => 'required',
                'constituency' => 'required',
                'phone_number' => 'required',
                'email' => 'required|email|unique:clients',
                'tpin' => 'required',
                'physical_address' => 'required'
            ],
            [
                'first_name.required' => 'First name is required..!!',
                'last_name.required' => 'Last name is required..!!',
                'other_name.string' => 'Characters only',
                'nrc.required' => 'NRC is required..!!',
                'dob.required' => 'Date of Birth is required..!!',
                'age.required' => 'Age is required..!!',
                'gender.required' => 'Gender is required..!!',
                'disability.required' => 'Disability is required..!!',
                'province.required' => 'Province is required..!!',
                'district.required' => 'District is required..!!',
                'constituency.required' => 'Constituency is required..!!',
                'phone_number' => 'Phone number is required..!!',
                'email.required' => 'Email Address already Exists..!!',
                'tpin.required' => 'Tpin is required..!!',
                'physical_address.required' => 'Physical Address is required..!!'
            ]
        );
        return $validated;
    }
}

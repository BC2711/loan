<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use App\Models\client;
use DB;

class ClientController extends Controller
{
   public function account()
   {
      return view('account.accounts');
   }
   public function client()
   {
      return view('account.clients');
   }
   public function index()
   {
      $cooperatives = Client::where('account_type','=','COOPERATIVE')->paginate(10);
   return view('account.cooperative')->with('cooperatives', $cooperatives);
   }

   public function create()
   {
    return view('account.cooperativeCreate');
   }

   public function store(request $request)
   {
      $user_id = Auth::User()->id;
      $validated = $this->validation($request);
      dump($validated);die;
      $fields = new client();
      $fields['business_name']=$validated['business_name'];
      $fields['business_reg_number']=$validated['business_reg_number'];
      $fields['type_of_business']=$validated['type_of_business'];
      $fields['first_name']=$validated['first_name'];
      $fields['last_name']=$validated['last_name'];
      $fields['other_name']='nullable';
      $fields['nrc']='nullable';
      $fields['age']='nullable';
      $fields['id_number']=$validated['id_number'];
      $fields['gender']=$validated['gender'];
      $fields['dob']=$validated['dob'];
      $fields['contact_designation']=$validated['contact_designation'];
      $fields['phone_number']=$validated['phone_number'];
      $fields['business_phone_number']=$validated['business_phone_number'];
      $fields['email']=$validated['email'];
      $fields['province']=$validated['province'];
      $fields['district']=$validated['district'];
      $fields['constituency']=$validated['constituency'];
      $fields['business_tpin']=$validated['business_tpin'];
      $fields['certificate_of_incorporation']=$validated['certificate_of_incorporation'];
      $fields['director_id_copies']=$validated['director_id_copies'];
      $fields['company_printouts']=$validated['company_printouts'];
      $fields['tax_registration_certificate']=$validated['tax_registration_certificate'];
      $fields['status']= 'PENDING';
      $fields['created_by_id']=$user_id;
      $fields['created_at']=\App\Helper\CommonFunction::getCurrentDate();
      $fields->save();
      return redirect()->route('cooperative')->with('success', 'Cooperative created asuccessfull, waiting for Approval in Pending Account..');
   }

   public function edit()
   {
    return view('account.edit-cooperative');
   }

   public function update(Request $request)
   {

   }

   public function destroy()
   {
    
   }

   public function validation($req)
   {
      $validated = $req->validate([
         'business_name' => 'required',
         'business_reg_number' => 'required',
         'type_of_business' => 'required',
         'first_name' => 'required',
         'last_name' => 'required',
         'id_number' => 'required',
         'gender' => 'required',
         'dob' => 'required',
         'contact_designation' => 'required',
         'phone_number' => 'required',
         'business_phone_number' => 'required',
         'email' => 'required|unique:Clients',
         'province' => 'required',
         'district' => 'required',
         'constituency' => 'required',
         'business_tpin' => 'required',
         'certificate_of_incorporation' => 'required',
         'director_id_copies' => 'required',
         'company_printouts' => 'required',
         'tax_registration_certificate' => 'required',
      ],
      [
         'business_name.required' => 'Business Name is required..!!',
         'business_reg_number.required' => 'Business Registration Number is required..!!',
         'type_of_business.required' => 'Type of Business is required..!!',
         'first_name.required' => 'First Name is required..!!',
         'last_name.required' => 'LastName is required..!!',
         'id_number.required' => 'ID number is required..!!',
         'gender.required' => 'Gender is required..!!',
         'dob.required' => 'Date of Birth is required...!',
         'contact_designation.required' => 'Contact Designation is required..!!',
         'phone_number.required' => 'Phone Number is required..!!',
         'business_phone_number.required' => 'Business Phone Number is required..!!',
         'email.required' => 'Email Address already exists..!!',
         'province.required' => 'Please select Province..!!',
         'constituency.required' => 'Please select Constituenncy..!!',
         'business_tpin.required' => 'Business Tpin is required..!!',
         'certificate_of_incorporation.required' => 'Certifiicate of Incorporation is required..!!',
         'director_id_copies.required' => 'Director ID Copies is required..!!',
         'company_printouts.required' => 'Company Printout is required..!!',
         'tax_registration_certificate.required' => 'Tax Registration Certificate is required..!!',
      ]
   );
   return $validated;
   }
}

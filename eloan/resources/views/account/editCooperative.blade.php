@extends('layout.main')
@section('content')
    <style>
        #card {
            background-color: #7db37d !important;
            border-color: #d99724 !important;
        }

        /* .form-group{
                            background-color:orange !important;
                        } */
        #label {
            font-size: 11px;
            font-weight: 20px;
        }

        h5,
        thead,
        tbody,
        tfoot,
        tr,
        td,
        th {
            border-color: orange !important;
        }

        #button {

            /* height: 20px !important;
                            width:131px; */
            /* background-color: #7db37d */
        }

        #dbt {
            padding: 3px !important;
            margin-bottom: 7px;
        }

        .btn {
            width: 150px !important;
            text-align: center;

        }

        #button:hover {
            background-color: #7db37d !important;
        }
    </style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Client KYC </li>
            <li class="breadcrumb-item active"><a href="{{ route('cooperative') }}">Cooperative </a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Update Cooperative </h4>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>
                {{-- @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif --}}
                <form action="{{ route('updatecooperative') }}" method="post" autocomplete="off">
                    @csrf
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Business Name<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" name="business_name"
                                        placeholder="Business Name" value="{{ old('business_name') }}" />
                                    @if ($errors->has('business_name'))
                                        <span class="text-danger">{{ $errors->first('business_name') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Contact First Name <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" nfirst_nameame=""
                                        placeholder="Contact First Name" />
                                    @if ($errors->has('first_name'))
                                        <span class="text-danger">{{ $errors->first('first_name') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupSelect" id="label">
                                        <h6>Gender <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="groupSelect" name="gender"
                                        aria-label="group label select example">
                                        <option value="MALE" id="label">
                                            <h6>Male</h6>
                                        </option>
                                        <option value="FEMALE" id="label">
                                            <h6>Female</h6>
                                        </option>
                                    </select>
                                    @if ($errors->has('gender'))
                                        <span class="text-danger">{{ $errors->first('gender') }}</span>
                                    @endif

                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Contact Mobile Number <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" name="phone_number" type="text"
                                        placeholder="Contact Mobile Number" />
                                    @if ($errors->has('phone_number'))
                                        <span class="text-danger">{{ $errors->first('phone_number') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupSelect" id="label">
                                        <h6>Province <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="groupSelect" name="province"
                                        aria-label="group label select example">
                                        <option value="" id="label">
                                            <h6>Select Province</h6>
                                        </option>
                                        <option id="label" value="LUSAKA">Lusaka</option>
                                        <option id="label" value="COPPERBELT">Copperbelt</option>
                                        <option id="label" value="CENTRAL">Central</option>
                                        <option id="label" value="SOUTHERN">Southern</option>
                                        <option id="label" value="NORTH WESTERN">North Western</option>
                                        <option id="label" value="WESTERN">Western</option>
                                        <option id="label" value="LUAPULA">Luapula</option>
                                        <option id="label" value="MUCHINGA">Muchinga</option>
                                        <option id="label" value="EASTERN">Eastern</option>
                                        <option id="label" value="NORTHERN">Northern</option>
                                    </select>
                                    @if ($errors->has('province'))
                                        <span class="text-danger">{{ $errors->first('province') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Business Tpin(Tax Payer Identification Number) <span class="danger">*</span>
                                        </h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" name="business_tpin"
                                        placeholder="Business Tpin" value="{{old('business_tpin')}}" />
                                    @if ($errors->has('business_tpin'))
                                        <span class="text-danger">{{ $errors->first('business_tpin') }}</span>
                                    @endif
                                </div>

                                <div class="form-group ">
                                    <label for="groupPassword" id="label">
                                        <h6>Company Printout (List of Directors) <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="file" value="{{old('company_printout')}}"
                                        name="company_printout" placeholder="Company Printout" />
                                    @if ($errors->has('company_printout'))
                                        <span class="text-danger">{{ $errors->first('company_printout') }}</span>
                                    @endif
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Business Registration Number <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" value="{{old('business_reg_number')}}"
                                        name="business_reg_number" placeholder="Business Registration Number" />
                                    @if ($errors->has('business_reg_number'))
                                        <span class="text-danger">{{ $errors->first('business_reg_number') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Contact Last Name<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" name="last_name" value="{{old('last_name')}}"
                                        placeholder="Contact Last Name" />
                                    @if ($errors->has('last_name'))
                                        <span class="text-danger">{{ $errors->first('last_name') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Date of Birth<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="date" name="dob"
                                        placeholder="Date of Birth" />
                                    @if ($errors->has('dob'))
                                        <span class="text-danger">{{ $errors->first('dob') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Business Phone Number<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" value="{{old('business_phone_number')}}"
                                        name="business_phone_number" placeholder="Business Phone Number" />
                                    @if ($errors->has('business_phone_number'))
                                        <span class="text-danger">{{ $errors->first('business_phone_number') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupSelect" id="label">
                                        <h6> District <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="groupSelect" aria-label="group label select example"
                                        name="district">
                                        <option id="label" value="">
                                            <h6>Please Select District </h6>
                                        </option>
                                        <option id="label" value="NO"></option>
                                        <option id="label" value="YES"></option>
                                    </select>
                                    @if ($errors->has('district'))
                                        <span class="text-danger">{{ $errors->first('district') }}</span>
                                    @endif
                                </div>


                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Certificate of Incorporation<span class="danger">*</span> </h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="file" value="{{old('certificate_of_incorporation')}}"
                                        name="certificate_of_incorporation" placeholder="Certificate of Incorporation" />
                                    @if ($errors->has('certificate_of_incorporation'))
                                        <span class="text-danger">{{ $errors->first('certificate_of_incorporation') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Tax Registration Certificate<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="file" value="{{old('tax_registration_certificate')}}"
                                        name="tax_registration_certificate" placeholder="Tax Registration Certificate" />
                                    @if ($errors->has('tax_registration_certificate'))
                                        <span class="text-danger">{{ $errors->first('tax_registration_certificate') }}</span>
                                    @endif
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-group mb-3">
                                    <label for="groupPassword" id="label">
                                        <h6>Type of Business </h6>
                                    </label>
                                    <input class="form-control" id="groupInput" type="text" name="type_of_business"
                                        placeholder="Type of Business" value="{{old('type_of_business')}}" />
                                    @if ($errors->has('type_of_business'))
                                        <span class="text-danger">{{ $errors->first('type_of_business') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupInput" id="label">
                                        <h6>ID Number</h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" name="id_number" value="{{old('id_number')}}"
                                        placeholder="ID Number" />
                                    @if ($errors->has('id_number'))
                                        <span class="text-danger">{{ $errors->first('id_number') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupInput" id="label">
                                        <h6> Contact Designation </h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="text" value="{{old('contact_designation')}}"
                                        name="contact_designation" placeholder=" Contact Designation" />
                                    @if ($errors->has('contact_designation'))
                                        <span class="text-danger">{{ $errors->first('contact_designation') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupInput" id="label">
                                        <h6>Email</h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" name="email" type="email" value="{{old('email')}}"
                                        placeholder="Email" />
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupSelect">
                                        <h6> Constituency<span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="groupSelect" name="constituency"
                                        aria-label="group label select example">
                                        <option id="label" value="">
                                            <h6>Select Constituency</h6>
                                        </option>
                                        <option id="label" value="LUSAKA">Lusaka</option>
                                        <option id="label" value="COPPERBELT">Copperbelt</option>
                                        <option id="label" value="CENTRAL">Central</option>
                                        <option id="label" value="SOUTHERN">Southern</option>
                                        <option id="label" value="NORTH WESTERN">North Western</option>
                                        <option id="label" value="WESTERN">Western</option>
                                        <option id="label" value="LUAPULA">Luapula</option>
                                        <option id="label" value="MUCHINGA">Muchinga</option>
                                        <option id="label" value="EASTERN">Eastern</option>
                                        <option id="label" value="NORTHERN">Northern</option>
                                    </select>
                                    @if ($errors->has('constituency'))
                                        <span class="text-danger">{{ $errors->first('constituency') }}</span>
                                    @endif
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupInput" id="label">
                                        <h6>Director ID Copies</h6> <span class="danger">*</span>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="file" value="{{old('director_id_copies')}}"
                                        name="director_id_copies" placeholder="Director ID Copies" />
                                    @if ($errors->has('director_id_copies'))
                                        <span class="text-danger">{{ $errors->first('director_id_copies') }}</span>
                                    @endif
                                </div>

                            </div>
                        </div>
                        {{-- <div class="col-12 col-sm-6 col-md-4">
                            <div class="px-5  code-to-copy">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="check"
                                        name="flexRadioDefault" />
                                    <label class="form-check-label" for="flexRadioDefault1" id="label">
                                        <h6>Tick If Access Authentication
                                            is required</h6>
                                    </label>
                                </div>
                            </div>
                        </div> --}}

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2 " id="button"
                            name="add" href="{{ route('cooperative') }}">
                            <h5 id="dbt">Back </h5>
                        </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2 " id="button"
                            name="add" type="submit">
                            <h5 id="dbt">Submit</h5>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

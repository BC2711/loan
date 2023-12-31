@extends('layout.main')
@section('content')
    <style>
        #card {
            background-color: #7db37d !important;
            border-color: #d99724 !important;
        }

        /* .form-floating{
                            background-color:orange !important;
                        } */
        .tdtd {
            font-weight: bold !important;
        }

        .btn {
            width: 150px !important;
            text-align: center;

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
            padding: 20px !important;
            height: 20px !important;
            width: 50px !important;
        }

        #button:hover {
            background-color: #7db37d !important;
        }
    </style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Client KYC</li>
            <li class="breadcrumb-item active"><a href="/individual">Individual</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark tdtd">Create Individual </h4>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>

                <form action="{{ route('store') }}" method="post" autocomplete="off">
                    @csrf
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-gruop mb-3">
                                    <label for="floatingPassword">
                                        <h6>First Name<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="first_name" name="first_name" type="text"
                                        value="{{ old('first_name') }}" placeholder="First Name" />
                                    @if ($errors->has('first_name'))
                                        <span class="text-danger">{{ $errors->first('first_name') }}</span>
                                    @endif
                                </div>
                                <div class="form-gruop mb-3">
                                    <label for="floatingPassword">
                                        <h6>NRC <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="nrc" name="nrc" type="text"
                                        value="{{ old('nrc') }}" placeholder="NRC" />
                                    @if ($errors->has('nrc'))
                                        <span class="text-danger">{{ $errors->first('nrc') }}</span>
                                    @endif
                                </div>

                                <div class="form-gruop mb-3">
                                    <label>
                                        <h6> Gender <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="gender" name="gender"
                                        aria-label="Floating label select example">
                                        <option value="MALE">
                                            <h6>Male</h6>
                                        </option>
                                        <option value="FEMALE">
                                            <h6>Female</h6>
                                        </option>
                                    </select>
                                    @if ($errors->has('gender'))
                                        <span class="text-danger">{{ $errors->first('gender') }}</span>
                                    @endif

                                </div>

                                <div class="form-gruop mb-3">
                                    <label for="floatingSelect">
                                        <h6> District <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="district" name="district"
                                        aria-label="Floating label select example">
                                        <option value="">
                                            <h6>Select District</h6>
                                        </option>
                                        <option value="Kitwe">Kitwe</option>
                                        <option value="Kitwe">Kitwe</option>
                                    </select>
                                    @if ($errors->has('district'))
                                        <span class="text-danger">{{ $errors->first('district') }}</span>
                                    @endif
                                </div>

                                <div class="form-gruop ">
                                    <label for="floatingPassword">
                                        <h6>Email <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="email" name="email" type="email"
                                        value="{{ old('email') }}" placeholder="Email" />
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-gruop mb-3">
                                    <label for="floatingPassword">
                                        <h6>Other Names</h6>
                                    </label>
                                    <input class="form-control" id="other_name" name="other_name" type="text"
                                        value="{{ old('other_name') }}" placeholder="Other Names" />
                                    @if ($errors->has('other_name'))
                                        <span class="text-danger">{{ $errors->first('other_name') }}</span>
                                    @endif
                                </div>
                                <div class="form-gruop mb-3">
                                    <label for="date">
                                        <h6>Date of Birth<span class="danger">*</span> </h6>
                                    </label>
                                    <input class="form-control" id="date" name="dob" type="date"
                                        value="{{ old('dob') }}" placeholder=">Date of Birth" />
                                    @if ($errors->has('dob'))
                                        <span class="text-danger">{{ $errors->first('dob') }}</span>
                                    @endif
                                </div>

                                <div class="form-gruop mb-3">
                                    <label for="floatingSelect">
                                        <h6> Disability <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="disability" name="disability"
                                        value="{{ old('disability') }}" aria-label="Floating label select example">
                                        <option value="">
                                            <h6>Please Select</h6>
                                        </option>
                                        <option value="NO">
                                            <h6>NO</h6>
                                        </option>
                                        <option value="YES">
                                            <h6>YES</h6>
                                        </option>
                                    </select>
                                    @if ($errors->has('disability'))
                                        <span class="text-danger">{{ $errors->first('disability') }}</span>
                                    @endif
                                </div>
                                <div class="form-gruop mb-3">
                                    <label for="floatingSelect">
                                        <h6> Constituency <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="constituency" name="constituency"
                                        aria-label="Floating label select example">
                                        <option value="">
                                            <h6>Please Select Constituency</h6>
                                        </option>
                                        <option value="NO">Constituency</option>
                                        <option value="YES">Constituency</option>
                                    </select>
                                    @if ($errors->has('constituency'))
                                        <span class="text-danger">{{ $errors->first('constituency') }}</span>
                                    @endif
                                </div>

                                <div class="form-gruop mb-3">
                                    <label for="floatingPassword">
                                        <h6>Tpin<span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="tpin" name="tpin" type="text"
                                        value="{{ old('tpin') }}" placeholder="Tpin" />
                                    @if ($errors->has('tpin'))
                                        <span class="text-danger">{{ $errors->first('tpin') }}</span>
                                    @endif
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-gruop mb-3">
                                    <label for="floatingPassword">
                                        <h6>Surname <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="last_name" name="last_name" type="text"
                                        value="{{ old('last_name') }}" placeholder="Surname" />
                                    @if ($errors->has('last_name'))
                                        <span class="text-danger">{{ $errors->first('last_name') }}</span>
                                    @endif

                                </div>
                                <div class="form-gruop mb-3">
                                    <label for="age">
                                        <h6>Age <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="age" name="age" type="text"
                                        value="{{ old('age') }}" placeholder="Age" />
                                    @if ($errors->has('age'))
                                        <span class="text-danger">{{ $errors->first('age') }}</span>
                                    @endif
                                </div>

                                <div class="form-gruop mb-3">
                                    <label for="floatingSelect">
                                        <h6>Province <span class="danger">*</span></h6>
                                    </label>
                                    <select class="form-select" id="province" name="province"
                                        aria-label="Floating label select example">
                                        <option value="">
                                            <h6>Select Province</h6>
                                        </option>
                                        <option value="LUSAKA">Lusaka</option>
                                        <option value="COPPERBELT">Copperbelt</option>
                                        <option value="CENTRAL">Central</option>
                                        <option value="SOUTHERN">Southern</option>
                                        <option value="NORTH WESTERN">North Western</option>
                                        <option value="WESTERN">Western</option>
                                        <option value="LUAPULA">Luapula</option>
                                        <option value="MUCHINGA">Muchinga</option>
                                        <option value="EASTERN">Eastern</option>
                                        <option value="NORTHERN">Northern</option>
                                    </select>
                                    @if ($errors->has('province'))
                                        <span class="text-danger">{{ $errors->first('province') }}</span>
                                    @endif
                                </div>
                                <div class="form-gruop mb-3">
                                    <label for="floatingInput">
                                        <h6>Phone Number <span class="danger">*</span></h6>
                                    </label>
                                    <input class="form-control" id="phone_number" name="phone_number" type="text"
                                        placeholder="Phone Number" />
                                    @if ($errors->has('phone_number'))
                                        <span class="text-danger">{{ $errors->first('phone_number') }}</span>
                                    @endif
                                </div>
                                <div class="form-gruop">
                                    <label for="floatingInput">
                                        <h6>Physical Address <span class="danger">*</span> </h6>
                                    </label>
                                    <input class="form-control" id="physical_address" name="physical_address"
                                        type="text" placeholder="Physical Address " />
                                    @if ($errors->has('physical_address'))
                                        <span class="text-danger">{{ $errors->first('physical_address') }}</span>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-12 col-sm-6 col-md-4">
                                    <div class="px-5  code-to-copy">
                                        <div class="form-check">
                                            <input class="form-check-input" id="flexRadioDefault1" type="check"
                                                name="flexRadioDefault" />
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                <h6>Tick If Access Authentication
                                                    is required</h6>
                                            </label>
                                        </div>
                                    </div>
                                </div> -->

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" href="/individual">
                            <h6>Back</h6>
                        </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">
                            <h6>Submit</h6>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        let date = document.getElementById('date');
        let age = document.getElementById('age');
        let currentDate =<?php date('Y') ?> - data.slice(0,4); 
        date.addEventListener('input', function(e) {
           
                age.value = this.value;
        })
    </script>
@endsection

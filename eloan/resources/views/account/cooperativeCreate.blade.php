@extends('layout.admmasterpage')
@section('content')
    <div class="content-w">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="/home">Home</a>
            </li>
            <li class="breadcrumb-item">
                <span>Account </span>
            </li>
            <li class="breadcrumb-item">
                <a href="{{ route('cooperative') }}"> <span>Cooperative</span> </a>
            </li>
            <li class="breadcrumb-item">
                <span id="color">Create</span>
            </li>
        </ul>
        <!--------------------
            END - Breadcrumbs
            -------------------->
        <div class="content-i">
            <div class="content-box">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="element-wrapper">
                            <div class="element-box headeingColor">
                                {{-- <h5 class="form-header">
                                    Dealer
                                </h5> --}}
                                <span>
                                    <h6> Create Account</h6>
                                </span>
                            </div>
                            <div class="element-box">
                                {{-- <div class="ppError">[[errorMsg]]</div> --}}

                                <form id="formValidate1" novalidate="true" action="{{ route('store') }}" method="post"
                                    name="admsupperagent" autocomplete="off">
                                    @csrf
                                    <div class="row">
                                        <div class="col-sm-4" id="ddddrgrtgrt">
                                            <div class="form-group">
                                                <label for="from_currency_code"><strong>Business Name</strong> <span
                                                        class="danger">*</span></label>
                                                <input class="form-control" type="text" autocomplete="off"
                                                    id="business_name" name="business_name"
                                                    value="{{ old('business_name') }}" />
                                            </div>
                                            @if ($errors->has('business_name'))
                                                <span class="text-danger">{{ $errors->first('business_name') }}</span>
                                            @endif
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Business Registration Number <span
                                                        class="danger"></span></label>
                                                <input class="form-control" value="{{ old('business_reg_number') }}"
                                                    type="text"id="business_reg_number" name="business_reg_number">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('business_reg_number'))
                                                <span class="text-danger">{{ $errors->first('business_reg_number') }}</span>
                                            @endif
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Type of Business <span
                                                        class="danger">*</span></label><input class="form-control"
                                                    id="type-of_business" name="type-of_business"
                                                    value="{{ old('type-of_business') }}" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('type-of_business'))
                                                <span class="text-danger">{{ $errors->first('type-of_business') }}</span>
                                            @endif
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Contact First Name <span
                                                        class="danger">*</span></label><input class="form-control"
                                                    id="first_name" name="first_name" value="{{ old('first_name') }}"
                                                    type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('first_name'))
                                                    <span class="text-danger">{{ $errors->first('first_name') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Contact Last Name <span
                                                        class="danger">*</span></label>
                                                <input id="last_name" name="last_name" value="{{ old('last_name') }}"
                                                    class="form-control" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('last_name'))
                                                <span class="text-danger">{{ $errors->first('last_name') }}</span>
                                            @endif
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">ID Number <span class="danger">*</span></label><input
                                                    id="id_number" name="id_number" value="{{ old('id_number') }}"
                                                    class="form-control" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('id_number'))
                                                <span class="text-danger">{{ $errors->first('id_number') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Gender <span class="danger">* </span></label>
                                                <select name="gender" id="gender" class="form-control">
                                                    <option value="MALE">Male</option>
                                                    <option value="FEMALE">Female</option>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('gender'))
                                                <span class="text-danger">{{ $errors->first('gender') }}</span>
                                            @endif
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Date of Birth <span class="danger">*</span></label>
                                                <input type="date" class="form-control name="dob" id="dob"
                                                    value="{{ old('dob') }}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('dob'))
                                                    <span class="text-danger">{{ $errors->first('dob') }}</span>
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Contact Designation <span
                                                        class="danger">*</span></label><input id="designation"
                                                    name="designation" value="{{ old('designation') }}"
                                                    class="form-control" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('designation'))
                                                <span class="text-danger">{{ $errors->first('designation') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Contact Mobile Number <span
                                                        class="danger">*</span></label><input id="phone_number"
                                                    name="phone_number" value="{{ old('phone_number') }}"
                                                    class="form-control" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('phone_number'))
                                                <span class="text-danger">{{ $errors->first('phone_number') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Business Phone Number <span
                                                        class="danger">*</span></label><input id="business_phone_number"
                                                    name="business_phone_number"
                                                    value="{{ old('business_phone_number') }}" class="form-control"
                                                    type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('business_phone_number'))
                                                <span
                                                    class="text-danger">{{ $errors->first('business_phone_number') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Email <span class="danger">*</span></label><input
                                                    id="email" name="email" value="{{ old('email') }}"
                                                    class="form-control" type="email">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                            @if ($errors->has('email'))
                                                <span class="text-danger">{{ $errors->first('email') }}</span>
                                            @endif
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Province<span class="danger">*</span></label>
                                                <select name="province" id="province" class="form-control">
                                                    <option value="">Select Province</option>
                                                    <?php echo App\Helper\CommonFunction::province(); ?>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('province'))
                                                    <span class="text-danger">{{ $errors->first('province') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">District <span class="danger">*</span></label>
                                                <select name="district" id="district" class="form-control">
                                                    <option value="">Select District</option>
                                                    <?php echo App\Helper\CommonFunction::province(); ?>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('district'))
                                                    <span class="text-danger">{{ $errors->first('district') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Constituency <span class="danger">*</span></label>
                                                <select name="constituency" id="constituency" class="form-control">
                                                    <option value="">Select Constituency</option>
                                                    <?php echo App\Helper\CommonFunction::province(); ?>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('constituency'))
                                                    <span class="text-danger">{{ $errors->first('constituency') }}</span>
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Business Tpin (Tax Payer Identification Number)<span
                                                        class="danger"></span></label>
                                                <input class="form-control" id="business_tpin" name="business_tpin"
                                                    value="{{ old('business_tpin') }}" type="number">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('business_tpin'))
                                                    <span class="text-danger">{{ $errors->first('business_tpin') }}</span>
                                                @endif
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Director ID Copies </label><input
                                                    class="form-control" type="file" id="director_id_copies"
                                                    name="director_id_copies" value="{{ old('director_id_copies') }}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('director_id_copies'))
                                                    <span
                                                        class="text-danger">{{ $errors->first('director_id_copies') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Tax Registration Certificate </label><input
                                                    class="form-control" type="file" id="tax_reg_certificate"
                                                    name="tax_reg_certificate" value="{{ old('tax_reg_certificate') }}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('tax_reg_certificate'))
                                                    <span
                                                        class="text-danger">{{ $errors->first('tax_reg_certificate') }}</span>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Company Printout (List of Directors) </label><input
                                                    class="form-control" type="file" id="company_printout"
                                                    name="company_printout" value="{{ old('company_printout') }}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                                @if ($errors->has('company_printout'))
                                                    <span
                                                        class="text-danger">{{ $errors->first('company_printout') }}</span>
                                                @endif
                                            </div>
                                        </div>


                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox" id="auth_required"
                                                    name="auth_required" value="1">Tick If Access Authentication is
                                                required</label>
                                        </div>
                                        <div class="form-buttons-w">
                                            <button class="btn btn-sm headeingColor  btnSize" name="add"
                                                value="Submit" type="submit"><h6>Submit</h6></button>
                                            <a class="btn btn-sm headeingColor  btnSize" id="color"
                                                href="{{ route('cooperative') }}"><h6>Back</h6></a>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div></div>
                </div>

            </div>
        </div>
    </div>



    <input type="hidden" id="selectedBranchCodeId" value="[[bank_branch_code]]" <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        getBranchCode();

        function getBranchCode(_type = "") {
            if (_type == "bank") {
                document.getElementById('city_id').value = "";
                document.getElementById('bank_branch_code').value = "";
            }
            var bank_id = document.getElementById('bank_id').value;
            var city_id = document.getElementById('city_id').value;
            var selectedBranchCodeId = document.getElementById('selectedBranchCodeId').value;


            var url = "ajax?mode=getBankCode&bankId=" + bank_id + "&bankCityId=" + city_id + "&selectedBranchCodeId=" +
                selectedBranchCodeId;
            if (bank_id && city_id) {
                $("#bankBranchCodeee").html("<img src='../img/loading.gif'>");
                $.ajax({
                    url: url,
                    success: function(result) {
                        $("#bankBranchCodeee").html(result);
                    }
                });
            }

        }
    </script>


    <script>
        getExtraBox(document.getElementById('seector').value);

        function getExtraBox(_type = "") {
            if (_type == "Other") {


                document.getElementById("ddddrgrtgrt").style.display = "block";



            } else {
                document.getElementById("ddddrgrtgrt").style.display = "none";

            }


        }
    </script>
@endsection

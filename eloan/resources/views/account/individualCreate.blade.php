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
                <a href="{{route('individuals')}}"> <span>Individual</span> </a>
            </li>
            <li class="breadcrumb-item" >
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
                                <span><h6> Create Account</h6></span>
                            </div>
                            <div class="element-box">
                                <div class="ppError">[[errorMsg]]</div>
                              
                                <form id="formValidate1" novalidate="true" action="{{route('store')}}" method="post"
                                    name="admsupperagent" autocomplete="off">
                                    @csrf
                                    <div class="row">                                       
                                        <div class="col-sm-4" id="ddddrgrtgrt">
                                            <div class="form-group">
                                                <label for="from_currency_code"><strong>First Name</strong> <span
                                                        class="danger">*</span></label>
                                                <input class="form-control" type="text" autocomplete="off"
                                                    id="first_name" name="first_name" value="{{old('first_name')}}" />
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Other Name <span
                                                        class="danger"></span></label>
                                                <input class="form-control" value="{{old('other_name')}}"
                                                    type="text"id="other_name" name="other_name">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Last Name <span
                                                        class="danger">*</span></label><input class="form-control"
                                                    id="last_name" name="last_name"
                                                    value="{{old('last_name')}}" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">NRC <span
                                                        class="danger">*</span></label><input class="form-control"
                                                    id="nrc" name="nrc" value="{{old('nrc')}}" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Date of Birth <span
                                                        class="danger">*</span></label>
                                                <input id="dob" name="dob" value="{{old('dob')}}"
                                                    class="form-control"  type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Age <span
                                                        class="danger">*</span></label><input id="age"
                                                    name="age" value="{{old('age')}}" class="form-control" type="text">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
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
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Disability <span class="danger">*</span></label>
                                                <select name="gender" id="gender" class="form-control">
                                                    <option value="NO">NO</option>
                                                    <option value="YES">YES</option>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Province<span class="danger">*</span></label>
                                                <select name="province" id="province" class="form-control">
                                                    <option value="">Select Province</option>
                                                    <?php echo App\Helper\CommonFunction::province()?>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">District <span
                                                        class="danger">*</span></label>
                                                        <select name="district" id="district" class="form-control">
                                                            <option value="">Select District</option>
                                                            <?php echo App\Helper\CommonFunction::province()?>
                                                        </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Constituency <span class="danger">*</span></label>
                                                <select name="constituency" id="constituency" class="form-control">
                                                    <option value="">Select Constituency</option>
                                                    <?php echo App\Helper\CommonFunction::province()?>
                                                </select>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="">Phone Number <span class="danger"></span></label>
                                                <input class="form-control"  id="phone_number" name="phone_number"
                                                    value="{{old('phone_number')}}" type="number">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>                                     

                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Email </label><input
                                                    class="form-control" type="text" id="email" name="email" value="{{old('email')}}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Tpin </label><input
                                                    class="form-control" type="number" id="tpin" name="tpin"
                                                    value="{{old('tpin')}}">
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for=""> Physical Address </label>
                                                <textarea name="physical_address" id="physical_address"  cols="2" rows="2" class="form-control">{{old('physical_address')}}</textarea>
                                                <div class="help-block form-text with-errors form-control-feedback"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input class="form-check-input" type="checkbox" id="auth_required"
                                                name="auth_required" value="1">Tick If Access Authentication is
                                            required</label>
                                    </div>
                                    <div class="form-buttons-w">
                                        <button class="btn btn-sm headeingColor  btnSize" name="add" value="Submit"
                                            type="submit"> Submit</button>
                                        <a class="btn btn-sm headeingColor  btnSize" id="color" href="{{route('individuals')}}"> Back</a>
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

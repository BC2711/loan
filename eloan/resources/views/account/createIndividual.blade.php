@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Account Holder KYC</li>
            <li class="breadcrumb-item active"><a href="/individual">Individual | Sole Trader</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Create Individual | Sole Trader </h4>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>
               
                <form action="" method="post" autocomplete="off">
                    <div class="row">

                        <div class="col-sm-4 mb-3">
                            <div class="form-group">

                                <label class="label text-dark" for="">First Name <span
                                        class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Other Names <span
                                        class="danger"></span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Surname <span class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />
                            </div>
                        </div>
                        <div class="col-sm-4 mb-3">
                            <div class="form-group">
                                <label class="label  text-dark" for="">NRC <span class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Date of Birth <span
                                        class="danger">*</span></label>
                                <input class="form-control datepicker" maxlength="6" type="date" autocomplete="off"
                                    id="fixed_commission" name="fixed_commission" value="[[fixed_commission]]" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Age<span class="danger">*</span></label>
                                <input class="form-control" maxlength="4" type="text" autocomplete="off" id="commission"
                                    name="commission" value="" />
                            </div>
                        </div>
                        <div class="col-sm-4 mb-3">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Gender<span class="danger">*</span></label>
                                <select name="gender" id="gender" class="form-control">
                                    <option value="">Male</option>
                                    <option value="">Female</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for="">Disability<span
                                        class="danger">*</span></label>
                                <select name="disability" id="disability" class="form-control">
                                    <option value="">Please select</option>
                                    <option value="">NO</option>
                                    <option value="">YES</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Province <span
                                        class="danger">*</span></label>
                                <select name="province" id="province" class="form-control">
                                    <option value="">Select Province</option>
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

                            </div>
                        </div>

                        <div class="col-sm-4 mb-3">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> District <span
                                        class="danger">*</span></label>
                                <select name="" id="" class="form-control">
                                    <option value="">Select District</option>
                                    <option value=""></option>
                                </select>

                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Constituency <span
                                        class="danger">*</span></label>
                                <select name="" id="" class="form-control">
                                    <option value="">Select Constituency</option>
                                    <option value=""></option>
                                </select>

                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Phone number <span
                                        class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />

                            </div>
                        </div>

                        <div class="col-sm-4 mb-3">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Email <span
                                        class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />

                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Tpin <span
                                        class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />

                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="label  text-dark" for=""> Physical Address<span
                                        class="danger">*</span></label>
                                <input class="form-control" type="text" autocomplete="off" id="fixed_fees"
                                    name="fixed_fees" />

                            </div>
                        </div>

                    </div>
                    <div class="form-buttons-w text-center">                        
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            href="/individual">Back </a>
                      
                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">Submit </button>
                    </div>
                </form>
              
            </div>
        </div>
    </div>
@endsection

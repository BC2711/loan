@extends('layout.main')
@section('content')
<style>
    #card{
        background-color: #7db37d !important;
        border-color: #d99724!important;
    }
    /* .form-floating{
        background-color:orange !important;
    } */
#label{
    font-size: 11px;
    font-weight: 20px;
}
     h5,thead, tbody, tfoot, tr, td, th{
        border-color: orange!important;
    }
    #button{
        padding: 20px!important;
        height: 20px !important;
        width:131px;
        /* background-color: #7db37d */
    }
    #button:hover{
        background-color: #7db37d !important;
    }
</style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Client KYC </li>
            <li class="breadcrumb-item active"><a href="/agent">Cooperative </a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Create Cooperative  </h4>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>

                <form action="" method="post" autocomplete="off">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Business Name<span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword" id="label"><h6>Contact First Name <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="MALE"  id="label"><h6>Male</h6></option>
                                        <option value="FEMALE"  id="label"><h6>Female</h6></option>
                                    </select>
                                    <label for="floatingSelect"  id="label"> <h6>Gender <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Contact Mobile Number <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value=""  id="label"><h6>Select Province</h6></option>
                                        <option  id="label" value="LUSAKA">Lusaka</option>
                                        <option  id="label" value="COPPERBELT">Copperbelt</option>
                                        <option  id="label" value="CENTRAL">Central</option>
                                        <option  id="label" value="SOUTHERN">Southern</option>
                                        <option  id="label" value="NORTH WESTERN">North Western</option>
                                        <option  id="label" value="WESTERN">Western</option>
                                        <option  id="label" value="LUAPULA">Luapula</option>
                                        <option  id="label" value="MUCHINGA">Muchinga</option>
                                        <option  id="label" value="EASTERN">Eastern</option>
                                        <option  id="label" value="NORTHERN">Northern</option>
                                    </select>
                                    <label for="floatingSelect"  id="label"> <h6>Province <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Business Tpin(Tax Payer Identification Number) <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Company Printout (List of Directors) <span class="danger">*</span></h6></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Business Registration Number <span class="danger">*</span></h6></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Contact Last Name<span class="danger">*</span></h6> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="date"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Date of Birth<span class="danger">*</span></h6> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Business Phone Number<span class="danger">*</span></h6> </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option  id="label" value=""><h6>Please Select District </h6></option>
                                        <option  id="label" value="NO"></option>
                                        <option  id="label" value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"  id="label"><h6> District <span class="danger">*</span></h6></label>
                                </div>
                               

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Certificate of Incorporation<span class="danger">*</span> </h6></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword"  id="label"><h6>Tax Registration Certificate<span class="danger">*</span></h6> </label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="text"
                                        placeholder="name@example.com" />
                                    <label for="floatingPassword"  id="label"><h6>Type of Business </h6></label>

                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput"  id="label"><h6>ID Number</h6> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput"  id="label"><h6> Contact Designation </h6> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput"  id="label"><h6>Email</h6> </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option  id="label" value=""><h6>Select Constituency</h6></option>
                                        <option  id="label" value="LUSAKA">Lusaka</option>
                                        <option  id="label" value="COPPERBELT">Copperbelt</option>
                                        <option  id="label" value="CENTRAL">Central</option>
                                        <option  id="label" value="SOUTHERN">Southern</option>
                                        <option  id="label" value="NORTH WESTERN">North Western</option>
                                        <option  id="label" value="WESTERN">Western</option>
                                        <option  id="label" value="LUAPULA">Luapula</option>
                                        <option  id="label" value="MUCHINGA">Muchinga</option>
                                        <option  id="label" value="EASTERN">Eastern</option>
                                        <option  id="label" value="NORTHERN">Northern</option>
                                    </select>
                                    <label for="floatingSelect"><h6> Constituency<span class="danger">*</span></h6> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingInput"  id="label"> <h6>Director ID Copies</h6> <span class="danger">*</span> </label>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="px-5  code-to-copy">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="check"
                                        name="flexRadioDefault" />
                                    <label class="form-check-label" for="flexRadioDefault1"  id="label"><h6>Tick If Access Authentication
                                        is required</h6></label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-md btn-phoenix-secondary bg-white hover-bg-100 me-2" id="button" name="add"
                            href="/agent"  id="label"><h6>Back</h6> </a>

                        <button class="btn btn-md btn-phoenix-secondary bg-white hover-bg-100 me-2"  id="button" name="add"
                            type="submit"  id="label"><h6>Submit</h6> </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

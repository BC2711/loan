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

     h5,thead, tbody, tfoot, tr, td, th{
        border-color: orange!important;
    }
    #button{
        padding: 20px!important;
        height: 20px !important;
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
                                    <label for="floatingPassword">Business Name<span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Contact First Name <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="MALE">Male</option>
                                        <option value="FEMALE">Female</option>
                                    </select>
                                    <label for="floatingSelect"> Gender <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Contact Mobile Number <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
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
                                    <label for="floatingSelect"> Province <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Business Tpin(Tax Payer Identification Number) <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Company Printout (List of Directors) <span class="danger">*</span></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Business Registration Number <span class="danger">*</span></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Contact Last Name<span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="date"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Date of Birth<span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Business Phone Number<span class="danger">*</span> </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Please Select District </option>
                                        <option value="NO"></option>
                                        <option value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"> District <span class="danger">*</span></label>
                                </div>
                               

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Certificate of Incorporation<span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Tax Registration Certificate<span class="danger">*</span> </label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="text"
                                        placeholder="name@example.com" />
                                    <label for="floatingPassword">Type of Business </label>

                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">ID Number </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Designation </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Email </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Select Constituency</option>
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
                                    <label for="floatingSelect"> Constituency <span class="danger">*</span></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingInput"> Director ID Copies <span class="danger">*</span> </label>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="px-5  code-to-copy">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="check"
                                        name="flexRadioDefault" />
                                    <label class="form-check-label" for="flexRadioDefault1">Tick If Access Authentication
                                        is required</label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-md btn-phoenix-secondary bg-white hover-bg-100 me-2" id="button" name="add"
                            href="/agent">Back </a>

                        <button class="btn btn-md btn-phoenix-secondary bg-white hover-bg-100 me-2"  id="button" name="add"
                            type="submit">Submit </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

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
    .tdtd{
            font-weight: bold !important;
        }

        .btn {
            width: 150px !important;
            text-align: center;

        }
     h5,thead, tbody, tfoot, tr, td, th{
        border-color: orange!important;
    }
    #button{
        padding: 20px!important;
        height: 20px !important;
       width: 50px!important;
    }
    #button:hover{
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

                <form action="" method="post" autocomplete="off">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3 tdtd">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"><h6>First Name<span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"><h6>NRC <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="MALE"><h6>Male</h6></option>
                                        <option value="FEMALE"><h6>Female</h6></option>
                                    </select>
                                    <label for="floatingSelect"><h6> Gender <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value=""><h6>Select District</h6></option>
                                        <option value="MALE"></option>
                                        <option value="FEMALE"></option>
                                    </select>
                                    <label for="floatingSelect"><h6> District <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"><h6>Email <span class="danger">*</span></h6></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"><h6>Other Names</h6></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="date" type="date" placeholder="Password" />
                                    <label for="date"><h6>Date of Birth<span class="danger">*</span> </h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value=""><h6>Please Select</h6> </option>
                                        <option value="NO"><h6>NO</h6></option>
                                        <option value="YES"><h6>YES</h6></option>
                                    </select>
                                    <label for="floatingSelect"><h6> Disability <span class="danger">*</span></h6></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value=""><h6>Please Select Constituency</h6></option>
                                        <option value="NO"></option>
                                        <option value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"><h6> Constituency <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"><h6>Tpin<span class="danger">*</span></h6> </label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="text"
                                        placeholder="name@example.com" />
                                    <label for="floatingPassword"><h6>Surname <span class="danger">*</span></h6></label>

                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="age" type="text" placeholder="Password" />
                                    <label for="age"><h6>Age <span class="danger">*</span></h6></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value=""><h6>Select Province</h6></option>
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
                                    <label for="floatingSelect"> <h6>Province <span class="danger">*</span></h6></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput"><h6>Phone Number <span class="danger">*</span></h6> </label>
                                </div>
                                <div class="form-floating">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput"><h6>Physical Address <span class="danger">*</span> </h6></label>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="px-5  code-to-copy">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="check"
                                        name="flexRadioDefault" />
                                    <label class="form-check-label" for="flexRadioDefault1"><h6>Tick If Access Authentication
                                        is required</h6></label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            href="/individual"><h6>Back</h6> </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit"><h6>Submit</h6> </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        let date = document.getElementById('date');
        let age = document.getElementById('age');
        let limit = 35;
        date.addEventListener('input', function(e) {
            age.value = this.value;
        })
    </script>
@endsection

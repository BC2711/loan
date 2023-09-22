@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Account Holder </li>
            <li class="breadcrumb-item active"><a href="/merchantoutlets">Merchant Outlet</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Create Merchant Outlet </h4>
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
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Select Merchant</option>

                                    </select>
                                    <label for="floatingSelect"> Merchant <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Contact Last Name <span class="danger">*</span></label>
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
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"> Postal Address <span class="danger">*</span></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword"> Outlet Name <span class="danger">*</span></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Contact Number<span class="danger">*</span> </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Please Select Region </option>
                                        <option value="NO"></option>
                                        <option value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"> Region <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Please Select Main Bank </option>
                                        <option value="NO"></option>
                                        <option value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"> Main Bank <span class="danger">*</span></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="text"
                                        placeholder="name@example.com" />
                                    <label for="floatingPassword">Contact First Name </label>

                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Email </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Physical Address </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Bank Account Number </label>
                                </div>


                            </div>
                        </div>

                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            href="/merchantoutlets">Back </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">Submit </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

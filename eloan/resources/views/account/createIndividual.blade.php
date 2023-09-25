@extends('layout.main')
@section('content')
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
                <h4 class="card-title text-dark">Create Individual </h4>
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
                                    <label for="floatingPassword">First Name<span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">NRC <span class="danger">*</span></label>
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
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Select District</option>
                                        <option value="MALE"></option>
                                        <option value="FEMALE"></option>
                                    </select>
                                    <label for="floatingSelect"> District <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Email <span class="danger">*</span></label>
                                </div>

                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Other Names</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="date" type="date" placeholder="Password" />
                                    <label for="date">Date of Birth<span class="danger">*</span> </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Please Select </option>
                                        <option value="NO">NO</option>
                                        <option value="YES">YES</option>
                                    </select>
                                    <label for="floatingSelect"> Disability <span class="danger">*</span></label>
                                </div>
                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option value="">Please Select Constituency</option>
                                        <option value="NO"></option>
                                        <option value="YES"></option>
                                    </select>
                                    <label for="floatingSelect"> Constituency <span class="danger">*</span></label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Tpin<span class="danger">*</span> </label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="text"
                                        placeholder="name@example.com" />
                                    <label for="floatingPassword">Surname <span class="danger">*</span></label>

                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="age" type="text" placeholder="Password" />
                                    <label for="age">Age <span class="danger">*</span></label>
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
                                    <label for="floatingInput">Phone Number <span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Physical Address <span class="danger">*</span> </label>
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
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            href="/individual">Back </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">Submit </button>
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

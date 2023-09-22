@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Management Services</li>
            <li class="breadcrumb-item active"><a href="/employee"> Employees</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Create Employee </h4>
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
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Email <span class="danger">*</span></label>
                                </div>
                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Additional Documents<span class="danger">*</span> </label>
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
                                    <input class="form-control" id="floatingPassword" type="date"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Date of Birth<span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Tpin<span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">CV<span class="danger">*</span> </label>
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
                                    <input class="form-control" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Phone Number <span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating">
                                    <input class="form-control mb-3" id="floatingPassword" type="text"
                                        placeholder="Password" />
                                    <label for="floatingInput">Physical Address <span class="danger">*</span> </label>
                                </div>
                                <div class="form-floating ">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingPassword">Certificates<span class="danger">*</span> </label>
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
                            href="/employee">Back </a>
                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">Submit </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

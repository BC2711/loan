@extends('layout.main')
@section('content')
    <style>
        #card {
            margin-left: -29px !important;
        }

        #card1 {
            border-radius: 0px;
            width: 150px;
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

        .btn {
            width: 150px !important;
        }

        #button:hover {
            background-color: #7db37d !important;
        }
    </style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active"> Management Services</li>
            <li class="breadcrumb-item"><a href="/employee">Employee</a></li>
            <li class="breadcrumb-item active">Leave Application</li>
        </ol>
    </nav>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">

                <div class="row">
                    <div class="col-sm-1 col-md-1 col-lg-3 m-0">
                        <h6 class="card-title text-dark text-center"> Days of Leave </h6>
                        <div class="card text-white success" style="background-color:#b5abab;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">2</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3 m-0">
                        <h6 class="card-title text-dark text-center"> Working Days </h6>
                        <div class="card text-white success" style="background-color:#b5abab;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">262</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3 m-0">
                        <h6 class="card-title text-dark text-center"># Sick Days </h6>
                        <div class="card text-white success" style="background-color:#7070d9;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">1</h6>
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-sm-1 col-md-1 col-lg-3 ml-5">
                        <h6 class="card-title text-dark ">Vacation </h6>
                        <div class="card text-white success" style="background-color:#d9b778;" id="card1">
                            <div class="card-body">                              
                                <h6 class="text-center">0</h6>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-sm-1 col-md-1 col-lg-2 ml-0">
                        <h6 class="card-title text-dark text-center"> Bereavement </h6>
                        <div class="card text-white "style="background-color:#9be79b;" id="card1">
                            <div class="card-body">
                               
                                <h6 class="text-center">1</h6>
                            </div>
                        </div>
                    </div> --}}
                    {{-- <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <h6 class="card-title text-dark text-center"> Accrured </h6>
                        <div class="card text-white success" style="background-color:#dddd6b;" id="card1">
                            <div class="card-body">
                            
                                <h6 class="text-center">0</h6>
                            </div>
                        </div>
                    </div> --}}
                </div>
            </div>
        </div>
        <div class="card text-white success m-4 px-4 mr-29" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark"> Apply New Leave </h4>

            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <form action="" method="post" autocomplete="off">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option selected="">Select Leave Type</option>
                                        <option value="1">Annual Leave</option>
                                        <option value="2">Sick Leave</option>
                                        <option value="3">Maternit Leave</option>
                                        <option value="4">Study Leave</option>
                                    </select>
                                    <label for="floatingSelect">
                                        <h6>Leave Type</h6>
                                    </label>
                                </div>

                                <div class="form-floating mb-3">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option selected="">Select Employee </option>
                                        <option value="1">Annual Leave</option>
                                        <option value="2">Sick Leave</option>
                                        <option value="3">Maternit Leave</option>
                                        <option value="4">Study Leave</option>
                                    </select>
                                    <label for="floatingPassword"></h6>Durties Taken Over By</h6></label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="date"
                                        placeholder="Password" />
                                    <label for="floatingPassword">
                                        <h6>Start Date</h6>
                                    </label>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" id="floatingPassword" type="" placeholder="Password"></textarea>
                                    <label for="floatingPassword">
                                        <h6>Reason For Leave</h6>
                                    </label>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingPassword" type="date"
                                        placeholder="Password" />
                                    <label for="floatingPassword">
                                        <h6>End Date</h6>
                                    </label>
                                </div>
                                <div class="form-floating">
                                    <input class="form-control" id="floatingPassword" type="file"
                                        placeholder="Password" />
                                    <label for="floatingInput">
                                        <h6>Attachment (If any)</h6>
                                    </label>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="button"
                            name="add" href="/employee">Back </a>

                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="button"
                            name="add" type="submit">Submit </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

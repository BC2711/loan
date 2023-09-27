@extends('layout.main')
@section('content')
    <style>
      

        #card1 {
            border-radius: 0px;
            height: 180px;
            width: 200px;
        }

        #card1:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
          
        }
    </style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Report</li>
            <li class="breadcrumb-item active"> Storage</li>
        </ol>
    </nav>
    {{-- <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">              
                <div class="row">   
                    <div class="col-sm-3 col-md-4 col-lg-1 mb-3"> 
                        <h5 class="card-title text-dark"> <a id="approved"  href="/pending">Approved = 25</a> </h5> 
                    </div>   
                    <div class="col-sm-3 col-md-4 col-lg-1 mb-3">  
                        <h5 class="card-title text-dark"><a id="pending" href="/pending">Pending = 35</a> </h5>
                    </div>   
                    <div class="col-sm-3 col-md-4 col-lg-1 mb-3">  
                        <h5 class="card-title text-dark"><a id="declined" href="/pending">Declined = 0</a>  </h5>
                    </div>      
                </div>              
            </div>
        </div>
    </div> --}}

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h6 class="card-title text-white"> </h6>
                <div class="row">
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Loan Applications </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Employee Contracts </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Company Policies </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">User Manuals </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Training Documents </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Payroll Documents </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Employee Handbooks </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Company Contracts </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Company Certificates </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Compliance Documents </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Tax forms </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Application Forms </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Tenders </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Legal </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Administration </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center"> Bank Statements </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Balance Sheets </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <a href="#">
                            <div class="card border text-dark  mb-2" id="card1">
                                <div class="card-body">
                                    <div class="row">
                                        <img src="/img/icons/folder.jpg" style="margin-top: -20px;" alt="">
                                        <h4 class="card-title text-center">Financials </h4>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>




                </div>

            </div>
        </div>
    </div>
@endsection

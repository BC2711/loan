@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Accounts</li>
            <li class="breadcrumb-item active">Account Requests</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">              
                <div class="row">   
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-3"> 
                        <h5 class="card-title text-dark">Approved  </h5> 
                    </div>   
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-3">  
                        <h5 class="card-title text-dark">Pending  </h5>
                    </div>   
                    <div class="col-sm-6 col-md-4 col-lg-3 mb-3">  
                        <h5 class="card-title text-dark">Declined  </h5>
                    </div>      
                </div>              
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>
                <div class="row">
                    <div class="col-sm-3 col-md-2 col-lg-3 mb-3">
                        <div class="card border text-dark">
                            <div class="card-body">
                                <h4 class="card-title">Primary Border Card </h4>
                                <p>Approved</p>
                               <p>Pending</p>
                               <p>Declined</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-3  mb-3">
                        <div class="card border border-light">
                            <div class="card-body">
                                <h4 class="card-title">Primary Border Card </h4>
                               
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-3  mb-3">
                        <div class="card border border-light">
                            <div class="card-body">
                                <h4 class="card-title">Primary Border Card </h4>
                                
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-3  mb-3">
                        <div class="card border border-light">
                            <div class="card-body">
                                <h4 class="card-title">Primary Border Card </h4>
                                
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-3  mb-3">
                        <div class="card border border-light">
                            <div class="card-body">
                                <h4 class="card-title">Primary Border Card </h4>
                               
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection

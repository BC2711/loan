@extends('layout.main')
@section('content')
<style>
    #approved{
        color:  rgb(55, 107, 55);
    }
    #pending{
        color: rgb(175, 141, 76);
    }
    #declined{
        color: rgb(148, 61, 61)
    }

    #card1 {
            border-radius: 0px;
            width: 250px;
        }
</style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Accounts</li>
            <li class="breadcrumb-item active">Account Requests</li>
        </ol>
    </nav>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
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
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h6 class="card-title text-white"> </h6>
                <div class="row">
                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <div class="card border text-dark" id="card1">
                            <div class="card-body">
                                <h6 class="card-title">Cooperative </h6>
                                <hr>
                                <div class="row" >
                                    <h6><a id="approved" href="/pending">Approved : 5</a></h6>
                                    <h6><a id="pending" href="/pending">Pending : 7</a></h6>
                                   <h6> <a id="declined" href="/pending">Delcined : 0</a></h6>
                                </div>
                              
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-md-2 col-lg-2 ">
                        <div class="card border border-light" id="card1">
                            <div class="card-body">
                                <h6 class="card-title">Individual </h6>
                                <hr>
                                <div class="row">
                                    <h6><a id="approved" href="/pending">Approved : 5</a></h6>
                                    <h6><a id="pending" href="/pending">Pending : 7</a></h6>
                                   <h6> <a id="declined" href="/pending">Delcined : 0</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-2 ">
                        <div class="card border border-light" id="card1">
                            <div class="card-body">
                                <h6 class="card-title">Loans</h6>
                                <hr>
                                <div class="row">
                                    <h6><a id="approved" href="/pending">Approved : 5</a></h6>
                                    <h6><a id="pending" href="/pending">Pending : 7</a></h6>
                                   <h6> <a id="declined" href="/pending">Delcined : 0</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-2">
                        <div class="card border border-light" id="card1">
                            <div class="card-body">
                                <h6 class="card-title">Limited Company </h6>
                                <hr>
                                <div class="row">
                                    <h6><a id="approved" href="/pending">Approved : 5</a></h6>
                                    <h6><a id="pending" href="/pending">Pending : 7</a></h6>
                                   <h6> <a id="declined" href="/pending">Delcined : 0</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 col-lg-2">
                        <div class="card border border-light" id="card1">
                            <div class="card-body">
                                <h6 class="card-title">Others</h6>
                                <hr>
                                <div class="row">
                                    <h6><a id="approved" href="/pending">Approved : 5</a></h6>
                                    <h6><a id="pending" href="/pending">Pending : 7</a></h6>
                                   <h6> <a id="declined" href="/pending">Delcined : 0</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>

            </div>
        </div>
    </div>
@endsection

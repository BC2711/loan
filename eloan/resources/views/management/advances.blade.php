@extends('layout.main')
@section('content')
<style>
     #card1 {
            border-radius: 0px;
            width: 300px;
            border-color:green;
        }

        #card1:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
          
        }
</style>
<nav class="mb-2" aria-label="breadcrumb">
    <ol class="breadcrumb mb-0">
      <li class="breadcrumb-item"><a href="/home">Home</a></li>
      <li class="breadcrumb-item active">  Management Services</li>
      <li class="breadcrumb-item active"> Loan Advances, Fees & Charges </li>
    </ol>
  </nav>
  
  <div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success leave" id="card">
        <div class="card-body">
            <h4 class="card-title text-dark"> Loan Advances, Fees & Charges  </h4>
        </div>
    </div>
</div>
<div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success" id="card">
        <div class="card-body">
            <div class="row">
              
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6 >Loan Advances</h6>                     
                            <h4 >SMS Charges</h4>
                        </div>
                    </div>
                </a>
                </div>

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6>Loan Advances</h6>                     
                            <h4>Fees & Charges</h4>
                        </div>
                    </div>
                </a>
                </div>

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6>Loan Advances</h6>                     
                            <h4>Repayment Charges</h4>
                        </div>
                    </div>
                </a>
                </div>

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6>Loan Advances</h6>                     
                            <h4> Interest Charges</h4>
                        </div>
                    </div>
                </a>
                </div>

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6>Loan Advances</h6>                     
                            <h4>Collection Communication</h4>
                        </div>
                    </div>
                </a>
                </div>

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <a href="#">
                    <div class="card text-white success"  id="card1">
                        <div class="card-body">          
                            <h6>Loan Advances</h6>                     
                            <h4>Loan Advance Limits</h4>
                        </div>
                    </div>
                </a>
                </div>

               
                
            </div>
        </div>
    </div>
</div>


@endsection
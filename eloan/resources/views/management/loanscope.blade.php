@extends('layout.main')
@section('content')
<style>
     .btn{
        width:140px;
    }
</style>
<nav class="mb-2" aria-label="breadcrumb">
    <ol class="breadcrumb mb-0">
      <li class="breadcrumb-item"><a href="/home">Home</a></li>
      <li class="breadcrumb-item active">  Management Services</li>
      <li class="breadcrumb-item active">Loan scope</li>
    </ol>
  </nav>
  
  <div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success leave" id="card">
        <div class="card-body">
            <div class="row">

                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Initiated From </h5></label>
                        <input class="form-control" id="groupPassword" type="date"
                            placeholder="Email" />
                       
                    </div>
                
                </div>
             
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Initiated To </h5></label>
                        <input class="form-control" id="groupPassword" type="date"
                            placeholder="Email" />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Trading As | Business </h5></label>
                        <input class="form-control" id="groupPassword" type="text"
                            placeholder="Trading As | Business " />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Contact Mobile Number </h5></label>
                        <input class="form-control" id="groupPassword" type="number"
                            placeholder="Contact Mobile Number" />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Deposit Reference</h5></label>
                        <input class="form-control" id="groupPassword" type="text"
                            placeholder="Deposit Reference" />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Loan Amount</h5></label>
                        <input class="form-control" id="groupPassword" type="text"
                            placeholder="Loan Amount" />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Txn Reference</h5></label>
                        <input class="form-control" id="groupPassword" type="text"
                            placeholder="Txn Reference" />
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Account Type</h5></label>
                        <select name="" id=""  class="form-control">
                            <option value="">Account Type</option>
                            <option value="">Ascending</option>
                        </select>
                       
                    </div>
                
                </div>
                <div class="col-sm-1 col-md-1 col-lg-2 m-2">
                    <div class="form-group mb-3">
                        <label for="groupPassword"><h5>Order By</h5></label>
                        <select name="" id=""  class="form-control">
                            <option value="">Descending</option>
                            <option value="">Ascending</option>
                        </select>
                    
                       
                    </div>
                
                </div>
                <hr id="leave">
                <div class="form-buttons-w">
                  
                    <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                        type="submit">Search </button>
                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                        type="submit">Clear </button>
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                        href="/employee">Back </a>
                </div>
            </div>
            
        </div>
    </div>
</div>
<div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success" id="card">
        <div class="card-body">
            <div data-list='{"valueNames":["Name","Surname","Contact","Address","Role","Username","Auth","Email","Province","Status","Last"],"page":6}'>
                <div class="row align-items-end justify-content-between pb-5 g-3">
                    <div class="col-auto">
                        <h5> Log</h5>
                    </div>
                    <div class="col-12 col-md-auto">
                        <div class="row g-2 gy-3">
                            <div class="col-auto flex-1">
                                <div class="search-box">
                                    <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                                        <input class="form-control search-input search form-control-sm" type="search" placeholder="Search" aria-label="Search"/>
                                        <span class="fas fa-search search-box-icon"></span>
                                    </form>
                                </div>
                            </div>
                            <div class="col-auto">
                                {{-- <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" href="/systemUser">Add new System User</a> --}}
        
                                {{-- <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 action-btn" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent">
                                    <span class="fas fa-ellipsis-h" data-fa-transform="shrink-2"></span>
                                </button> --}}
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                        <a class="dropdown-item" href="#">Action</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">Another action</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive mx-n1 px-1 scrollbar">
                    <table class="table fs--1 mb-0 border-top border-200">
                        <thead id="leave">
                            <tr>                      
                                <th class="sort white-space-nowrap" scope="col" data-sort=" Name">Count</th>
                                <th class="sort" scope="col" data-sort="Surname " >initiated Date</th>
                                <th class="sort" scope="col" data-sort="Contact" >Trading As | Business Name </th>
                                <th class="sort" scope="col" data-sort="Email">Mobile Number</th>
                                <th class="sort" scope="col" data-sort="Address">Client Type</th>
                                <th class="sort" scope="col" data-sort="Province ">Deposit Reference</th>
                                <th class="sort" scope="col" data-sort="Role"> Transaction Reference</th>
                                <th class="sort" scope="col" data-sort="Username">Loan Amount</th>
                                <th class="sort" scope="col" data-sort="Status">Status</th>
                                <th class="sort" scope="col" data-sort="Last">Approved Date </th>
                                <th class="sort" scope="col" data-sort="Auth">Time Lapse </th>
                                <th class="sort" scope="col" data-sort="Action">Action</th>
                            
                            </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name">                           
                                      1                           
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                 2022-09-29
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                      MOH Global                        
                                </td>
                                <td class="white-space-nowrap tdtd Email ">                          
                                  0978678654
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Govenment
                                </td>
                                <td class=" white-space-nowrap tdtd Province">                          
                                        MOHG0001
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                   FMS22092HA9G/LOA                       
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    1100
                                </td>
                                <td class="white-space-nowrap tdtd Status"  style="color: GREEN;">
                                    Approved
                                </td>
                                <td class="white-space-nowrap tdtd Last"  >
                                    2022-09-20
                                </td>
                                <td class="white-space-nowrap tdtd Auth" >
                                    10:00:23
                                </td>
                                <td class="white-space-nowrap tdtd review" style="color: blue;">
                                   View | Statement
                                </td>      
                              
                            </tr>
                          
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name">                           
                                      3                           
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                 2022-08-9
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                      NBM PLC                        
                                </td>
                                <td class="white-space-nowrap tdtd Email ">                          
                                  0968456234
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Corporate
                                </td>
                                <td class=" white-space-nowrap tdtd Province">                          
                                        NBMP00023
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    NBMP00292H9G/LOA                       
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    3000
                                </td>
                                <td class="white-space-nowrap tdtd Status"  style="color: GREEN;" >
                                    Approved
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2022-08-20
                                </td>
                                <td class="white-space-nowrap tdtd Auth" >
                                    10:00:23
                                </td>
                                <td class="white-space-nowrap tdtd review" style="color: blue;">
                                   View | Statement
                                </td>      
                              
                            </tr>

                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name">                           
                                      1                           
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                 2022-09-29
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                      FMS UAT                        
                                </td>
                                <td class="white-space-nowrap tdtd Email ">                          
                                  0987532244
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Govenment
                                </td>
                                <td class=" white-space-nowrap tdtd Province">                          
                                        FMS00031
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    FMS000312HA9G/LOA                       
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    5100
                                </td>
                                <td class="white-space-nowrap tdtd Status" style="color: GREEN;" >
                                    Approved
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2022-09-20
                                </td>
                                <td class="white-space-nowrap tdtd Auth" >
                                    10:00:23
                                </td>
                                <td class="white-space-nowrap tdtd review" style="color: blue;">
                                   View | Statement
                                </td>      
                              
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row align-items-center py-1">
                    <div class="pagination d-none"></div>
                    <div class="col d-flex fs--1">
                        <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info"></p>
                        <a class="fw-semi-bold" href="#!" data-list-view="*">
                            View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span>
                        </a>
                        <a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less</a>
                    </div>
                    <div class="col-auto d-flex">
                        <button class="btn btn-link px-1 me-1" type="button" title="Previous" data-list-pagination="prev">
                            <span class="fas fa-chevron-left me-2"></span>
                            Previous
                        </button>
                        <button class="btn btn-link px-1 ms-1" type="button" title="Next" data-list-pagination="next">
                            Next<span class="fas fa-chevron-right ms-2"></span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
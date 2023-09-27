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
        .tdtd{
            font-weight: bold !important;
            font-size: 14px;
        }
        .head{
            font-weight: bolder !important;
            font-size: 20px;
        }
.leave{
    background-color: #7db37d;
}
        h5,
        thead,
        tbody,
        tfoot,
        tr,
        td,
        th {
            border-color: #7db37d !important;
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
                <h5 class="card-title text-dark"> Chris Banda  </h5>
                <hr>
                <div class="row">
                    <div class="col-sm-1 col-md-1 col-lg-3 ml-0">
                        <h6 class="card-title text-dark text-center"  id="card1"> Days of Leave </h6>
                        <div class="card text-white success" style="background-color:#b5abab;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">2</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3 ml-5">
                        <h6 class="card-title text-dark text-center" id="card1"> Working Days </h6>
                        <div class="card text-white success" style="background-color:#b5abab;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">262</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-3 ml-5">
                        <h6 class="card-title text-dark text-center" id="card1"># Sick Days </h6>
                        <div class="card text-white success" style="background-color:#7070d9;" id="card1">
                            <div class="card-body">                               
                                <h6 class="text-center">1</h6>
                            </div>
                        </div>
                    </div>
                  
                    <div class="col-sm-1 col-md-1 col-lg-3 ml-5">
                        <h6 class="card-title text-dark text-center" id="card1">Vacation </h6>
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
        <div class="card text-white success m-4 px-4 mr-29 leave" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark"> Apply New Leave </h4>

            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">
                <form action="" method="post" autocomplete="off">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-group mb-3">
                                    <label for="groupSelect">
                                        <h6>Leave Type</h6>
                                    </label>
                                    <select class="form-select" id="groupSelect"
                                        aria-label="group label select example">
                                        <option selected="">Select Leave Type</option>
                                        <option value="1">Annual Leave</option>
                                        <option value="2">Sick Leave</option>
                                        <option value="3">Maternit Leave</option>
                                        <option value="4">Study Leave</option>
                                    </select>
                                   
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h6>Durties Taken Over By</h6></label>
                                    <select class="form-select" id="groupSelect"
                                        aria-label="group label select example">
                                        <option selected="">Select Employee </option>
                                        <option value="1">Annual Leave</option>
                                        <option value="2">Sick Leave</option>
                                        <option value="3">Maternit Leave</option>
                                        <option value="4">Study Leave</option>
                                    </select>
                                   
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-group mb-3">
                                    <label for="groupPassword">
                                        <h6>Start Date</h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="date"
                                        placeholder="Password" />
                                   
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword">
                                        <h6>Reason For Leave</h6>
                                    </label>
                                    <textarea class="form-control" id="groupPassword" type="" placeholder="Reason For Leave"></textarea>
                                  
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <div class="p-4 code-to-copy">
                                <div class="form-group mb-3">
                                    <label for="groupPassword">
                                        <h6>End Date</h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="date"
                                        placeholder="Password" />
                                  
                                </div>
                                <div class="form-group">
                                    <label for="groupInput">
                                        <h6>Attachment (If any)</h6>
                                    </label>
                                    <input class="form-control" id="groupPassword" type="file"
                                        placeholder="Password" />
                                   
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

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success " id="card">
            <div class="card-body">
                <div data-list='{"valueNames":["Name","Surname","Contact","Address","Email","Status"],"page":6}'>
                    <div class="row align-items-end justify-content-between pb-5 g-3">
                        <div class="col-auto">
                            <h5> Log 2</h5>
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
                                    {{-- <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" href="/createemployee">Add new Employee</a>
            
                                    <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 action-btn" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent">
                                        <span class="fas fa-ellipsis-h" data-fa-transform="shrink-2"></span>
                                    </button>
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
                                    </ul> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive mx-n1 px-1 scrollbar">
                        <table class="table fs--1 mb-0 border-top border-200">
                            <thead style="background-color: #7db37d">
                                <tr>                      
                                    <th class="sort head" scope="col" data-sort=" Name">Leave Description</th>
                                    <th class="sort head" scope="col" data-sort="Surname " >Leave Type</th>
                                    <th class="sort head" scope="col" data-sort="Surname " >Start Date</th>
                                    <th class="sort head" scope="col" data-sort="Surname " >End Date</th>
                                    <th class="sort head" scope="col" data-sort="Address">Leave Status</th>
                                    <th class="sort head" scope="col" data-sort="Address">Action</th>
                                </tr>
                            </thead>
                            <tbody class="list" id="table-latest-review-body">
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">                                    
                                    <td class="white-space-nowrap tdtd Name">                           
                                          Family Vacation                           
                                    </td>
                                    <td class="white-space-nowrap tdtd Surname">
                                        Annual Leave
                                    </td>
                                    <td class=" white-space-nowrap tdtd Contact">                           
                                          01-01-2022                      
                                    </td>
                                    <td class="white-space-nowrap tdtd Email">                          
                                        01-01-2023    
                                    </td>
                                    <td class="white-space-nowrap tdtd Address" >
                                     Approved
                                    </td>   
                                    <td class="white-space-nowrap tdtd Address"  style="color: blue" >
                                        View
                                       </td>       
                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">                                    
                                    <td class="white-space-nowrap tdtd Name">                           
                                          Family Vacation                           
                                    </td>
                                    <td class="white-space-nowrap tdtd Surname">
                                        Annual Leave
                                    </td>
                                    <td class=" white-space-nowrap tdtd Contact">                           
                                          01-01-2022                      
                                    </td>
                                    <td class="white-space-nowrap tdtd Email">                          
                                        01-01-2023    
                                    </td>
                                    <td class="white-space-nowrap tdtd Address" >
                                     Rejected
                                    </td>   
                                    <td class="white-space-nowrap tdtd Address" style="color: blue" >
                                        View
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

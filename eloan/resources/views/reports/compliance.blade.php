@extends('layout.main')
@section('content')
<nav class="mb-2" aria-label="breadcrumb">
    <ol class="breadcrumb mb-0">
      <li class="breadcrumb-item"><a href="/home">Home</a></li>
      <li class="breadcrumb-item active">Reports</li>
      <li class="breadcrumb-item active">Compliance</li>
    </ol>
  </nav>
  
  <div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success" id="card">
        <div class="card-body">
            <h4 class="card-title text-dark"> Compliance   </h4>
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
                        <thead>
                            <tr>                      
                                <th class="sort white-space-nowrap" scope="col" data-sort=" Name">Name</th>
                                <th class="sort" scope="col" data-sort="Surname " >Surname</th>
                                <th class="sort" scope="col" data-sort="Contact" >Contact Number</th>
                                <th class="sort" scope="col" data-sort="Email">Email</th>
                                <th class="sort" scope="col" data-sort="Address">Address</th>
                                <th class="sort" scope="col" data-sort="Province ">Province</th>
                                <th class="sort" scope="col" data-sort="Role">Role Type</th>
                                <th class="sort" scope="col" data-sort="Username">Username</th>
                                <th class="sort" scope="col" data-sort="Status">Status</th>
                                <th class="sort" scope="col" data-sort="Last">Last Login</th>
                                <th class="sort" scope="col" data-sort="Auth">Auth Status</th>
                                <th class="sort" scope="col" data-sort="Action">Action</th>
                                <th class="sort" scope="col"></th>
                            </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name">                           
                                      Name                           
                                </td>
                                <td class="white-space-nowrap Surname">
                                 Date
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                       Richard Dawkins                        
                                </td>
                                <td class="white-space-nowrap Email fs--2">                          
                                    <span class="fa fa-star text-warning"></span>
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Sample
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                        Approved
                                </td>
                                <td class=" white-space-nowrap Role">
                                    Just now                          
                                </td>
                                <td class="white-space-nowrap Username" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Status" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Last" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Auth" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap review">
                                    Sample
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name">                           
                                      Name                           
                                </td>
                                <td class="white-space-nowrap Surname">
                                 Date
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                       Richard Dawkins                        
                                </td>
                                <td class="white-space-nowrap Email fs--2">                          
                                    <span class="fa fa-star text-warning"></span>
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Sample
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                        Approved
                                </td>
                                <td class=" white-space-nowrap Role">
                                    Just now                          
                                </td>
                                <td class="white-space-nowrap Username" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Status" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Last" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap Auth" >
                                    Sample
                                </td>
                                <td class="white-space-nowrap review">
                                    Sample
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
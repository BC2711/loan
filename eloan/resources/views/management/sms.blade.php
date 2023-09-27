@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active"> Management Services</li>
            <li class="breadcrumb-item active">SMS Logs</li>
        </ol>
    </nav>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark"> SMS Logs </h4>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <div
                    data-list='{"valueNames":["Name","Surname","Contact","Address","Role","Username","Auth","Email","Province","Status","Last"],"page":6}'>
                    <div class="row align-items-end justify-content-between pb-5 g-3">
                        <div class="col-auto">
                            <h5> Log 3 </h5>
                        </div>
                        <div class="col-12 col-md-auto">
                            <div class="row g-2 gy-3">
                                {{-- <div class="col-auto flex-1">
                                    <div class="search-box">
                                        <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                                            <div class="form-floating">
                                                <input class="form-control search-input search" placeholder="Search"
                                                    aria-label="Search" id="floatingPassword" type="search"
                                                    placeholder="Password" />
                                                <label for="floatingPassword">
                                                    
                                                </label>
                                            </div>
                                        </form>
                                    </div>
                                </div> --}}
                                <div class="col-auto flex-1">
                                    <div class="search-box">
                                        <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                                            <div class="form-group">
                                                <label for="floatingSelect"><h6> From</h6></label>
                                                <input class="form-control" id="floatingPassword" type="date"
                                                    placeholder="Password" />
                                               
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-auto flex-1">
                                    <div class="search-box">
                                        <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                                            <div class="form-group">
                                                <label for="floatingSelect"><h6> To</h6></label>
                                                <input class="form-control" id="floatingPassword" type="date"
                                                    placeholder="Password" />
                                               
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-auto">



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
                                    <th class="sort  white-space-nowrap" scope="col" data-sort=" Name">Count</th>
                                    <th class="sort " scope="col" data-sort="Surname ">Date & Time</th>
                                    <th class="sort " scope="col" data-sort="Contact">Account Name</th>
                                    <th class="sort " scope="col" data-sort="Email">Account Type</th>
                                    <th class="sort " scope="col" data-sort="Province ">Phone Number </th>
                                    <th class="sort " scope="col" data-sort="Province ">Sender ID </th>
                                    <th class="sort " scope="col" data-sort="Role">Subject </th>
                                    <th class="sort " scope="col" data-sort="Username">SMS Type</th>
                                    <th class="sort " scope="col" data-sort="Status">Status</th>
                                    <th class="sort " scope="col" data-sort="Action">Action</th>

                                </tr>
                            </thead>
                            <tbody class="list" id="table-latest-review-body">
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                    <td class="white-space-nowrap tdtd Name">
                                        1
                                    </td>
                                    <td class="white-space-nowrap tdtd Surname">
                                        16/08/2023
                                    </td>
                                    <td class=" white-space-nowrap tdtd Contact">
                                        ZANACO
                                    </td>
                                    <td class="white-space-nowrap tdtd Email ">
                                        Cooperative
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        0987654322
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        ceec loans
                                    </td>
                                    <td class=" white-space-nowrap tdtd Role">
                                        Dear ZANACO your loan application is being pro..
                                    </td>
                                    <td class="white-space-nowrap tdtd Username">
                                        Communication
                                    </td>
                                    <td class="white-space-nowrap tdtd Status">
                                        Delivered
                                    </td>
                                    <td class="white-space-nowrap tdtd Last">
                                        <a href="#"> view | Resend</a>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                    <td class="white-space-nowrap tdtd Name">
                                        2
                                    </td>
                                    <td class="white-space-nowrap tdtd Surname">
                                        13/05/2023
                                    </td>
                                    <td class=" white-space-nowrap tdtd Contact">
                                        Dawkins Richard
                                    </td>
                                    <td class="white-space-nowrap tdtd Email ">
                                        Individual
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        0987678657
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        ceec loans
                                    </td>
                                    <td class=" white-space-nowrap tdtd Role">
                                        Dear Dawkins Richard your loan application has b...
                                    </td>
                                    <td class="white-space-nowrap tdtd Username">
                                        Communication
                                    </td>
                                    <td class="white-space-nowrap tdtd Status">
                                        Delivered
                                    </td>
                                    <td class="white-space-nowrap tdtd Last">
                                        <a href="#"> view | Resend</a>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                    <td class="white-space-nowrap tdtd Name">
                                        3
                                    </td>
                                    <td class="white-space-nowrap tdtd Surname">
                                        30/06/2023
                                    </td>
                                    <td class=" white-space-nowrap tdtd Contact">
                                        Speedpay
                                    </td>
                                    <td class="white-space-nowrap tdtd Email ">
                                        Limited Company
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        0987897654
                                    </td>
                                    <td class="white-space-nowrap tdtd Province">
                                        ceec loans
                                    </td>
                                    <td class=" white-space-nowrap tdtd Role">
                                        Dear Speedpay your loan application has been ...
                                    </td>
                                    <td class="white-space-nowrap tdtd Username">
                                        Communication
                                    </td>
                                    <td class="white-space-nowrap tdtd Status">
                                        Delivered
                                    </td>
                                    <td class="white-space-nowrap tdtd Last">
                                        <a href="#"> view | Resend</a>
                                    </td>

                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row align-items-center py-1">
                        <div class="pagination d-none"></div>
                        <div class="col d-flex fs--1">
                            <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info">
                            </p>
                            <a class="fw-semi-bold" href="#!" data-list-view="*">
                                View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span>
                            </a>
                            <a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less</a>
                        </div>
                        <div class="col-auto d-flex">
                            <button class="btn btn-link px-1 me-1" type="button" title="Previous"
                                data-list-pagination="prev">
                                <span class="fas fa-chevron-left me-2"></span>
                                Previous
                            </button>
                            <button class="btn btn-link px-1 ms-1" type="button" title="Next"
                                data-list-pagination="next">
                                Next<span class="fas fa-chevron-right ms-2"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

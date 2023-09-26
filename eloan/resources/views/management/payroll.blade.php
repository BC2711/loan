@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active"> Management Services</li>
            <li class="breadcrumb-item active"> Payroll</li>
        </ol>
    </nav>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark"> Payroll Employees </h4>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">

            <div class="card-body">
                <div class="row align-items-center py-1">
                    <div class="pagination d-none"></div>
                    <div class="col d-flex fs--1">
                        <p class="mb-0 d-none d-sm-block me-3 fw-semi-bold text-900" data-list-info="data-list-info">
                        </p>
                        {{-- <a class="fw-semi-bold" href="#!" data-list-view="*">
                            View all<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span>
                        </a> --}}
                        {{-- <a class="fw-semi-bold d-none" href="#!" data-list-view="less">View Less</a> --}}
                    </div>
                    <div class="col-auto d-flex">
                        <a type="button" class="btn btn-success btn-sm m-3"  >
                            Run Payroll
                       </a>
                        <a type="button" class="btn btn-primary btn-sm m-3"  >
                             Approve Payroll
                        </a>
                      
                        <a type="button" class="btn btn-danger btn-sm m-3" >
                            Reject Payroll
                        </a>
                        <a type="button" class="btn btn-secondary btn-sm m-3" >
                            View Approval Payroll
                        </a>
                    </div>
                </div>
                <div
                    data-list='{"valueNames":["Name","Surname","Contact","Address","Role","Username","Auth","Email","Province","Status","Last"],"page":6}'>
                    <div class="row align-items-end justify-content-between pb-5 g-3">
                        <div class="col-auto">
                            <button type="button" class="btn btn-primary btn-sm">Export to Excel </button>
                            <button type="button" class="btn btn-warning btn-sm">Send To Print</button>
                        </div>
                        <div class="col-12 col-md-auto">
                            <div class="row g-2 gy-3">
                                <div class="col-auto flex-1">
                                    <div class="search-box">
                                        <form class="position-relative" data-bs-toggle="search" data-bs-display="static">

                                            <input class="form-control search-input search" placeholder="Search"
                                                aria-label="Search" id="floatingPassword" type="search"
                                                placeholder="Password" />
                                            <span class="fas fa-search search-box-icon"></span>
                                    </div>
                                    </form>
                                </div>
                            </div>

                            <div class="col-auto">
                                {{-- <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"
                                href="/createemployee"> </a> --}}
                                {{-- <button  class="form-control" type="button" data-bs-toggle="dropdown" data-boundary="window" aria-haspopup="true" aria-expanded="false" data-bs-reference="parent">
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
                                <th class="sort  white-space-nowrap" scope="col" data-sort=" Name">ID</th>
                                <th class="sort " scope="col" data-sort="Surname ">First Name</th>
                                <th class="sort " scope="col" data-sort="Contact">Last Name</th>
                                <th class="sort " scope="col" data-sort="Email"> National ID</th>
                                <th class="sort " scope="col" data-sort="Province ">Department </th>
                                <th class="sort " scope="col" data-sort="Province ">Grade </th>
                                <th class="sort " scope="col" data-sort="Role">Bank </th>
                                <th class="sort " scope="col" data-sort="Username">Phone </th>
                                <th class="sort " scope="col" data-sort="Status">Status</th>
                                <th class="sort " scope="col" data-sort="Action">Hire Date</th>
                                <th class="sort " scope="col" data-sort="Action">Created </th>
                                <th class="sort " scope="col" data-sort="Action"> </th>
                            </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                <td class="white-space-nowrap tdtd Name">
                                    1
                                </td>
                                <td class="white-space-nowrap tdtd Last">
                                    Grace
                                </td>

                                <td class=" white-space-nowrap tdtd Contact">
                                    Mwaba
                                </td>
                                <td class="white-space-nowrap tdtd Email ">
                                    3456/78/9
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    FINANCE
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    A
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    FNB
                                </td>

                                <td class="white-space-nowrap tdtd Status">
                                    09876543212
                                </td>

                                <td class="white-space-nowrap tdtd Surname leave">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2022
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2023
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    <div class="dropdown">
                                        <a class="btn btn-primary btn-sm  dropdown-toggle" href="#" role="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">View Incomes & Deductions</a>
                                            </li>
                                            <li><a class="dropdown-item" href="#">View PaySlip</a></li>
                                        </ul>
                                    </div>

                                </td>

                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                <td class="white-space-nowrap tdtd Name">
                                    2
                                </td>
                                <td class="white-space-nowrap tdtd Last">
                                    Mwaba
                                </td>

                                <td class=" white-space-nowrap tdtd Contact">
                                    Angela
                                </td>
                                <td class="white-space-nowrap tdtd Email ">
                                    3456/78/9
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    IT
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    A
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    Atlas Mara
                                </td>

                                <td class="white-space-nowrap tdtd Status">
                                    09876543212
                                </td>

                                <td class="white-space-nowrap tdtd Surname">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2022
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2023
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    <div class="dropdown">
                                        <a class="btn btn-primary btn-sm  dropdown-toggle" href="#" role="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">View Incomes & Deductions</a>
                                            </li>
                                            <li><a class="dropdown-item" href="#">View PaySlip</a></li>
                                        </ul>
                                    </div>

                                </td>

                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">

                                <td class="white-space-nowrap tdtd Name">
                                    3
                                </td>
                                <td class="white-space-nowrap tdtd Last">
                                    Silvia
                                </td>

                                <td class=" white-space-nowrap tdtd Contact">
                                    Banda
                                </td>
                                <td class="white-space-nowrap tdtd Email ">
                                    34356/98/9
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    Human Resource
                                </td>
                                <td class="white-space-nowrap tdtd Province">
                                    A
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    ZANACO
                                </td>

                                <td class="white-space-nowrap tdtd Status">
                                    0967443212
                                </td>

                                <td class="white-space-nowrap tdtd Surname">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2021
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    2/09/2023
                                </td>
                                <td class="white-space-nowrap tdtd Surname">
                                    <div class="dropdown">
                                        <button class="btn btn-primary btn-sm  dropdown-toggle" href="#" role="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">View Incomes & Deductions</a>
                                            </li>
                                            <li><a class="dropdown-item" href="#">View PaySlip</a></li>
                                        </ul>
                                    </div>



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

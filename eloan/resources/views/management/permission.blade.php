@extends('layout.main')
@section('content')
<style>
    #card{
        /* background-color: #7db37d !important; */
        border-color: #d99724!important;
    }
    .form-floating{
        border-blockcolor:orange !important;
    }

     h5,thead, tbody, tfoot, tr, td, th{
        border-color: orange!important;
    }
    .form-check-label{
        color:green;
    }
</style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Management Services</li>
            <li class="breadcrumb-item active">User Permission</li>
        </ol>
    </nav>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success " id="card">
            <div class="card-body" id="boder">
                <h3 class="card-title text-dark"> User Permission </h3>
            </div>
        </div>
    </div>

    <div class="col-sm-12 col-md-12 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <form action="" method="post">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-6">
                            <div class="p-0 code-to-copy">
                                <div class="form-floating">
                                    <select class="form-select" id="floatingSelect"
                                        aria-label="Floating label select example">
                                        <option selected="">select user Role</option>
                                        <option value="1">CREDIT AND RISK MANAGER</option>
                                        <option value="2">ASSISTANT FINANCE TREASURY</option>
                                        <option value="3">DIRECTOR CREDIT AND RISK</option>
                                        <option value="3">FINANCE  AND BUDGET MANAGER</option>
                                        <option value="3">FINANCE DIRECTOR </option>
                                        <option value="3">IT SUPPORT </option>
                                    </select>
                                    <label for="floatingSelect"> User Role</label>
                                </div>
                            </div>
                        </div>

                        

                        <div class="col-12 col-sm-6 col-md-6">
                            <div class="p-0 code-to-copy">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="floatingInput" type="email"
                                        placeholder="name@example.com" />
                                    <label for="floatingInput">User Role</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    

                    <div class="col-12 col-sm-6 col-md-6">
                        <div class="px-5 code-to-copy">
                            <div class="form-check">
                                <input class="form-check-input" id="flexCheckChecked" type="checkbox" value=""
                                    check="" />
                                <label class="form-check-label" for="flexCheckChecked">Check All</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12 m-4">
                        <div class="card text-white success" id="card">
                            <div class="card-body">

                                <div class="p-0 code-to-copy">
                                    <div>
                                        <h5>Home page</h5>
                                        <table class="table table-striped table-sm fs--1 mb-4 ">
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Dashboard</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="row">

                                                                    <div class="form-check">
                                                                        <input class="form-check-input" id="flexCheckChecked"
                                                                            type="checkbox" value="" check="" />
                                                                        <label class="form-check-label"
                                                                            for="flexCheckChecked">View</label>
                                                                    </div>
                                                                   
                                                                </div>
                                                                
                                                            </div>
                                                  
                                                            
                                                        </div>
                                                    </td>
                                                </tr>
                                         
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Products</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="row">

                                                                    <div class="form-check">
                                                                        <input class="form-check-input" id="flexCheckChecked"
                                                                            type="checkbox" value="" check="" />
                                                                        <label class="form-check-label"
                                                                            for="flexCheckChecked">View</label>
                                                                    </div>
                                                                   
                                                                </div>
                                                                
                                                            </div>
                                                  
                                                            
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                    <div>
                                        <h5>Account Holder</h5>
                                        <table class="table table-striped table-sm fs--1 mb-4">
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Acount Holder Creation</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> View Account Application</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create Limited Company</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Create Business Account</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Download Account Application</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Create Cooperate Account</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Reset Password</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create Individual Account</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Update Account</label>
                                                                </div>
                                                               
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                     
                                    
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Loan Request</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Process Individual Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">  Process Business Account Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Decline Loan Request</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Process Cooperate Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Approve Business Account Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Approve Individual Loan Request</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Approve Cooperate Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Approve Limited Company Loan Request</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Process Limited Company Loan Request</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                      
                                      
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Account Requests</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Authorize Account Opening</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Authorize New Product Creation</label>
                                                                </div>
                                                               
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Create Account User</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Authorize Audit Trails | Logs</label>
                                                                </div>
                                                               
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Authorize Account User Creation</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Authorize Account Activation | Deactivation</label>
                                                                </div>
                                                                
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                     
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Loan Advances And Fees Charges</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create & Update Withdraw Charges</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create & Update Penalty Charges</label>
                                                                </div>
                                                               
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create & Update Reversal Charges</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create & Update Sms Charges</label>
                                                                </div>
                                                               
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> Create & Update Repayment Charges</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Create & Update Advances Limit</label>
                                                                </div>
                                                                
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                           
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name"> Reports</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Custom Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> View Collection Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> View Financial Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Customer Reports</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Risk Assessment Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked"> View Compliance Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Payment Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Loan Status Report</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Operational Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Exception Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Forecasting And Predictive Reports</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">View Loan Originator Reports</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <h5>Query </h5>
                                        <table class="table table-striped table-sm fs--1 mb-4">
                                            <thead>
                                                <tr>
                                                    <th class="sort border-top ps-3" data-sort="name">Name</th>
                                                </tr>
                                            </thead>
                                            <tbody class="list">
                                                <tr>
                                                    <td class="align-middle ps-3 name">
                                                        <div class="row gx-4 gy-5">
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-12 col-sm-6 col-md-4">
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" id="flexCheckChecked"
                                                                        type="checkbox" value="" check="" />
                                                                    <label class="form-check-label"
                                                                        for="flexCheckChecked">Checked checkbox</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <div class="form-buttons-w text-center">
                                            <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"
                                                name="add" href="/home">Back </a>
                                            <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"
                                                name="add" type="submit">Create </button>
                                            <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"
                                                name="add" type="submit">Update </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>




    </div>
    </div>
    </div>
    </div>
@endsection

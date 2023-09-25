@extends('layout.main')
@section('content')
<style>
       #btt:hover{
        background-color: green!important;

        
    #card{
        background-color: #7db37d !important;
        border-color: #d99724!important;
    }
    /* .form-floating{
        background-color:orange !important;
    } */
#label{
    font-size: 11px;
    font-weight: 20px;
}
     h5,thead, tbody, tfoot, tr, td, th{
        border-color: orange!important;
    }
    #button{
        padding: 20px!important;
        height: 20px !important;
        width:131px;
        /* background-color: #7db37d */
    }
    #button:hover{
        background-color: #7db37d !important;
    }
    }
</style>
<nav class="mb-2" aria-label="breadcrumb">
    <ol class="breadcrumb mb-0">
      <li class="breadcrumb-item"><a href="/home">Home</a></li>
      <li class="breadcrumb-item active">  Management Services</li>
      <li class="breadcrumb-item active">System User</li>
    </ol>
  </nav>
  
  <div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success" id="card">
        <div class="card-body">
            <h4 class="card-title text-dark"> System User  </h4>
        </div>
    </div>
</div>
<div class="col-sm-6 col-md-9 col-lg-12 m-4">
    <div class="card text-white success" id="card">
        <div class="card-body">
            <div data-list='{"valueNames":["Name","Surname","Contact","Address","Role","Username","Auth","Email","Province","Status","Last"],"page":10}'>
                <div class="row align-items-end justify-content-between pb-5 g-3">
                    <div class="col-auto">
                        {{-- <h5> Log</h5> --}}
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
                                <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt" href="/systemUser">Add new System User</a>
        
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
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive mx-n1 px-1 scrollbar">
                    <table class="table table-striped fs--1 mb-0 border-top border-200">
                        <thead  style="background-color: #7db37d; height:80px;">
                            <tr style="margin:10px; padding:5px;">                      
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
                                <th class="sort" scope="col" data-sort="Action" style="text-align: center;">Action</th>
                                <th class="sort" scope="col"></th>
                            </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Victor                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Kabwe
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    8978788767               
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    victor@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Malawi
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap Role">
                                    FINANCE DIRECTOR                   
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10007
                                </td>
                                <td class="white-space-nowrap Status"   style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 11:47:16
                                </td>
                                <td class="white-space-nowrap Auth"   style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: orange;" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: green;" href="#"> Password Recovery</a>
                                    
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Faith                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Khatoha
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    fail@gmail.COM
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Oasis
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    LEGAL AND COMPLIANCE DIRECTOR              
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10006</td>
                                <td class="white-space-nowrap Status"   style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth"   style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: orange;" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: green;" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name">Jacob                           
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Phiri
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    Phiri@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Copperbelt
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    RISK OFFICER      
                                </td>
                                <td class="white-space-nowrap Username" >
                                    COUN10001</td>
                                <td class="white-space-nowrap Status"   style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:02:16
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Christopher                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Chifwembe
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    896750887            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    chris@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    SENIOR CREDIT OFFICER     
                                </td>
                                <td class="white-space-nowrap Username" >
                                    ATME10001</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 09:53:33
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Rocy                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Balengu
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    532237626            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    balengu@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    CREDIT AND RISK MANAGER          
                                </td>
                                <td class="white-space-nowrap Username" >
                                    BALE10001</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Micheal                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Khuntena
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    782378433            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    micheal@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    DIRECTOR CREDIT AND RISK            
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10005</td>
                                <td class="white-space-nowrap Status" style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> BINESS                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Chama
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    123456763            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    chama@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap Role">
                                    PROVINCIAL FINANCE AND ADMIN            
                                </td>
                                <td class="white-space-nowrap Username" >
                                    FOOD10001</td>
                                <td class="white-space-nowrap Status"style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Victor                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Kabwe
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    8978788767               
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    victor@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Malawi
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap Role">
                                    FINANCE DIRECTOR                   
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10007
                                </td>
                                <td class="white-space-nowrap Status" style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 11:47:16
                                </td>
                                <td class="white-space-nowrap Auth"style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Faith                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Khatoha
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    faith@gmail.COM
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Oasis
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    LEGAL AND COMPLIANCE DIRECTOR              
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10006</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Felix                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Mwape
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    Mwape@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    chelstone
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                   Southern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    RISK OFFICER      
                                </td>
                                <td class="white-space-nowrap Username" >
                                    COUN10001</td>
                                <td class="white-space-nowrap Status"  style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:02:16
                                </td>
                                <td class="white-space-nowrap Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Christopher                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Chifwembe
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    896750887            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    chris@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    SENIOR CREDIT OFFICER     
                                </td>
                                <td class="white-space-nowrap Username" >
                                    ATME10001</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 09:53:33
                                </td>
                                <td class="white-space-nowrap Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Rocy                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Balengu
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    532237626            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    balengu@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    CREDIT AND RISK MANAGER          
                                </td>
                                <td class="white-space-nowrap Username" >
                                    BALE10001</td>
                                <td class="white-space-nowrap Status" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Micheal                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Khuntena
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    782378433            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    micheal@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap Role">
                                    DIRECTOR CREDIT AND RISK            
                                </td>
                                <td class="white-space-nowrap Username" >
                                    SPEE10005</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap Name"> Biness                          
                                </td> 
                                <td class="white-space-nowrap Surname">
                                    Chama
                                </td>
                                <td class=" white-space-nowrap Contact">                           
                                    123456763            
                                </td>
                                <td class="white-space-nowrap Email">                          
                                    chama@gmail.com
                                </td>
                                <td class="white-space-nowrap Address" >
                                    Lusaka
                                </td>
                                <td class=" text-start ps-5 Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap Role">
                                    PROVINCIAL FINANCE AND ADMIN            
                                </td>
                                <td class="white-space-nowrap Username" >
                                    FOOD10001</td>
                                <td class="white-space-nowrap Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: green;" id="btt" href="#"> Password Recovery</a>
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
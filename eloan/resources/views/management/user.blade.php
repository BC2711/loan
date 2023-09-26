@extends('layout.main')
@section('content')
<style>
       #btt:hover{
        background-color: green!important;
       }
        .tdtd{
            font-weight: bold !important;
        }
    
    #button{
        padding: 20px!important;
        height: 20px !important;
        width:131px;       
    }
  #thead{
    font-size: 20px;
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
                        <thead  style="background-color: #7db37d; height:60px;">
                            <tr style="margin:10px; padding:5px;">                      
                                <th class="sort white-space-nowrap tdtd"  style="height:10px !important;" scope="col" data-sort=" Name" id="thead">Name</th>
                                <th class="sort" scope="col" data-sort="Surname " id="thead" >Surname</th>
                                <th class="sort" scope="col" data-sort="Contact"  id="thead" >Contact Number</th>
                                <th class="sort" scope="col" data-sort="Email"  id="thead">Email</th>
                                <th class="sort" scope="col" data-sort="Address"  id="thead">Address</th>
                                <th class="sort" scope="col" data-sort="Province "  id="thead">Province</th>
                                <th class="sort" scope="col" data-sort="Role"  id="thead">Role Type</th>
                                <th class="sort" scope="col" data-sort="Username"  id="thead">Username</th>
                                <th class="sort" scope="col" data-sort="Status"  id="thead">Status</th>
                                <th class="sort" scope="col" data-sort="Last"  id="thead">Last Login</th>
                                <th class="sort" scope="col" data-sort="Auth"  id="thead">Auth Status</th>
                                <th class="sort" scope="col" data-sort="Action" style="text-align: center;"  id="thead">Action</th>
                                <th class="sort" scope="col"></th>
                            </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap  tdtd Name"> 
                                    Victor                       
                                </td> 
                                <td class="white-space-nowrap  tdtd Surname">
                                    Kabwe
                                </td>
                                <td class=" white-space-nowrap  tdtd Contact">                           
                                    8978788767               
                                </td>
                                <td class="white-space-nowrap tdtd  Email">                          
                                    victor@gmail.com
                                </td>
                                <td class="white-space-nowrap  tdtd Address" >
                                    Malawi
                                </td>
                                <td class=" white-space-nowrap tdtd   Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap  tdtd Role">
                                    FINANCE DIRECTOR                   
                                </td>
                                <td class="white-space-nowrap tdtd  Username" >
                                    SPEE10007
                                </td>
                                <td class="white-space-nowrap  tdtd Status"   style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd  Last" >
                                    2023-08-28 11:47:16
                                </td>
                                <td class="white-space-nowrap  tdtd Auth"   style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd  review" style="text-align: center;" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: orange;" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: green;" href="#"> Password Recovery</a>
                                    
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap  tdtd Name"> Faith                          
                                </td> 
                                <td class="white-space-nowrap tdtd  Surname">
                                    Khatoha
                                </td>
                                <td class=" white-space-nowrap  tdtd Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap tdtd  Email">                          
                                    fail@gmail.COM
                                </td>
                                <td class="white-space-nowrap  tdtd Address" >
                                    Oasis
                                </td>
                                <td class=" white-space-nowrap  tdtd Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap tdtd  Role">
                                    LEGAL AND COMPLIANCE DIRECTOR              
                                </td>
                                <td class="white-space-nowrap tdtd  Username" >
                                    SPEE10006</td>
                                <td class="white-space-nowrap tdtd  Status"   style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap  tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd  Auth"   style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap  tdtd review" style="text-align: center;" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: orange;" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt"   style="color: green;" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd  Name">
                                    Jacob                           
                                </td> 
                                <td class="white-space-nowrap  tdtd Surname">
                                    Phiri
                                </td>
                                <td class=" white-space-nowrap tdtd  Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap  tdtd Email">                          
                                    Phiri@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd  Address" >
                                    Copperbelt
                                </td>
                                <td class="white-space-nowrap  tdtd Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap  tdtd Role">
                                    RISK OFFICER      
                                </td>
                                <td class="white-space-nowrap tdtd  Username" >
                                    COUN10001</td>
                                <td class="white-space-nowrap  tdtd Status"   style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd  Last" >
                                    2023-08-28 10:02:16
                                </td>
                                <td class="white-space-nowrap  tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd  review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Christopher                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Chifwembe
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    896750887            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    chris@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class="white-space-nowrap tdtd Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap tdtd  Role">
                                    SENIOR CREDIT OFFICER     
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    ATME10001</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 09:53:33
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Rocy                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Balengu
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    532237626            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    balengu@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    CREDIT AND RISK MANAGER          
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    BALE10001</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Micheal                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Khuntena
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    782378433            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    micheal@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    DIRECTOR CREDIT AND RISK            
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    SPEE10005</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> BINESS                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Chama
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    123456763            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    chama@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    PROVINCIAL FINANCE AND ADMIN            
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    FOOD10001</td>
                                <td class="white-space-nowrap tdtd Status"style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Victor                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Kabwe
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    8978788767               
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    victor@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Malawi
                                </td>
                                <td class=" white-space-nowrap tdtd Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    FINANCE DIRECTOR                   
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    SPEE10007
                                </td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 11:47:16
                                </td>
                                <td class="white-space-nowrap tdtd Auth"style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Faith                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Khatoha
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    faith@gmail.COM
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Oasis
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    LEGAL AND COMPLIANCE DIRECTOR              
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    SPEE10006</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Felix                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Mwape
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    9078675            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    Mwape@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    chelstone
                                </td>
                                <td class="white-space-nowrap tdtd  Province">                          
                                   Southern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    RISK OFFICER      
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    COUN10001</td>
                                <td class="white-space-nowrap tdtd Status"  style="color: green;">
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:02:16
                                </td>
                                <td class="white-space-nowrap tdtd Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Christopher                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Chifwembe
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    896750887            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    chris@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    SENIOR CREDIT OFFICER     
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    ATME10001</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 09:53:33
                                </td>
                                <td class="white-space-nowrap tdtd Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Rocy                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Balengu
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    532237626            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    balengu@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Northern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    CREDIT AND RISK MANAGER          
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    BALE10001</td>
                                <td class="white-space-nowrap tdtd Status" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Micheal                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Khuntena
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    782378433            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    micheal@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka, Lusaka
                                </td>
                                <td class="white-space-nowrap tdtd  Province">                          
                                    Eastern
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    DIRECTOR CREDIT AND RISK            
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    SPEE10005</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth"  style="color: red;">
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"  style="color: orange;" id="btt" href="#">Update</a>
                                    <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" style="color: green;" id="btt" href="#"> Password Recovery</a>
                                </td>      
                              
                            </tr>
                            <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                
                                <td class="white-space-nowrap tdtd Name"> Biness                          
                                </td> 
                                <td class="white-space-nowrap tdtd Surname">
                                    Chama
                                </td>
                                <td class=" white-space-nowrap tdtd Contact">                           
                                    123456763            
                                </td>
                                <td class="white-space-nowrap tdtd Email">                          
                                    chama@gmail.com
                                </td>
                                <td class="white-space-nowrap tdtd Address" >
                                    Lusaka
                                </td>
                                <td class=" white-space-nowrap tdtd  Province">                          
                                    Central
                                </td>
                                <td class=" white-space-nowrap tdtd Role">
                                    PROVINCIAL FINANCE AND ADMIN            
                                </td>
                                <td class="white-space-nowrap tdtd Username" >
                                    FOOD10001</td>
                                <td class="white-space-nowrap tdtd Status" style="color: green;" >
                                    Active
                                </td>
                                <td class="white-space-nowrap tdtd Last" >
                                    2023-08-28 10:11:59
                                </td>
                                <td class="white-space-nowrap tdtd Auth" style="color: red;" >
                                    Not Required
                                </td>
                                <td class="white-space-nowrap tdtd review" style="text-align: center;">
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
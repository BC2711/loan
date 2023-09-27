@extends('layout.main')
@section('content')
<style>
    .btn{
        width:140px;
    }
    .btn:hover{
        background-color: green!important;
    }
</style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Management Services</li>
            <li class="breadcrumb-item active"><a href="/employee"> Employees</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </nav>
    
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">
                <h4 class="card-title text-dark">Create Employee </h4>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success leave" id="card">
            <div class="card-body">
                <h4 class="card-title text-white"> </h4>
                <form action="" method="post" autocomplete="off">
                    <div class="row gx-4 gy-5">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">
                                <div class="form-group mb-3">
                                    <label for="groupSelect"> <h5>Department <span class="danger">*</span></h5></label>
                                    <select class="form-select" id="groupSelect"
                                        aria-label="group label select example">
                                        <option value="MALE">Human Resource</option>
                                        <option value="FEMALE">IT</option>
                                    </select>
                                  
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>Other Names</h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="Other Names" />
                                  
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupSelect"><h5> Gender <span class="danger">*</span></h5></label>
                                    <select class="form-select" id="groupSelect"
                                        aria-label="group label select example">
                                        <option value="MALE">Male</option>
                                        <option value="FEMALE">Female</option>
                                    </select>
                                   
                                </div>
                              
                                <div class="form-group mb-3">
                                    <label for="groupInput"><h5>Phone Number <span class="danger">*</span> </h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="Phone Number" />
                                  
                                </div>

                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>CV<span class="danger">*</span></h5> </label>
                                    <input class="form-control" id="groupPassword" type="file"
                                        placeholder="CV" />
                                   
                                </div>
                               
                              
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">

                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5> Position<span class="danger">*</span></h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="Position" />
                                  
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>Surname <span class="danger">*</span></h5></label>
                                    <input class="form-control" id="groupInput" type="text"
                                        placeholder="Surname" />
                                 
                                </div>
                               
                                <div class="form-group mb-3">
                                    <label id="tdtd" for="groupPassword"><h5>NRC <span class="danger">*</span></h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="NRC" />
                                   
                                </div>
                               
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>Email <span class="danger">*</span></h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="Email" />
                                   
                                </div>
                                <div class="form-group ">
                                    <label for="groupPassword"><h5>Certificates<span class="danger">*</span></h5> </label>
                                    <input class="form-control" id="groupPassword" type="file"
                                        placeholder="Certificates" />
                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="p-4 code-to-copy">
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>First Name<span class="danger">*</span></h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="First Name" />
                                  
                                </div>
                                
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>Date of Birth<span class="danger">*</span></h5> </label>
                                    <input class="form-control" id="groupPassword" type="date"
                                        placeholder="Date of Birth" />
                                  
                                </div>
                                <div class="form-group mb-3">
                                    <label for="groupPassword"><h5>Tpin<span class="danger">*</span> </h5></label>
                                    <input class="form-control" id="groupPassword" type="text"
                                        placeholder="Tpin" />
                                  
                                </div>
                               
                                <div class="form-group">
                                    <label for="groupInput"><h5>Physical Address <span class="danger">*</span></h5> </label>
                                    <input class="form-control mb-3" id="groupPassword" type="text"
                                        placeholder="Physical Address" />
                                   
                                </div>
                               
                                <div class="form-group ">
                                    <label for="groupPassword"><h5>Additional Documents<span class="danger">*</span> </h5></label>
                                    <input class="form-control" id="groupPassword" type="file"
                                        placeholder="Additional Documents" />
                                 
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <div class="px-5  code-to-copy">
                                <div class="form-check">
                                    <input class="form-check-input" id="flexRadioDefault1" type="check"
                                        name="flexRadioDefault" />
                                    <label class="form-check-label" for="flexRadioDefault1"><h5>Tick If Access Authentication
                                        is required</h5></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-buttons-w text-center">
                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            href="/employee">Back </a>
                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                            type="submit">Submit </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

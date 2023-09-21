@extends('layout.main')
@section('content')
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active">Management Services</li>
            <li class="breadcrumb-item active">User Permission</li>
        </ol>
    </nav>

    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h3 class="card-title text-dark"> User Permission </h3>
            </div>
        </div>
    </div>

    <div class="col-sm-12 col-md-12 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <div class="row gx-4 gy-5">
                    <div class="col-12 col-sm-6 col-md-4">
                        <div class="p-4 code-to-copy">
                            <div class="form-floating">
                                <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                    <option selected="">select user Role</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                <label for="floatingSelect"> User Role</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-4">
                    </div>
                    <div class="col-12 col-sm-6 col-md-4">
                        <div class="p-4 code-to-copy">
                            <div class="form-floating mb-3">
                                <input class="form-control" id="floatingInput" type="email"
                                    placeholder="name@example.com" />
                                <label for="floatingInput">User Role</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-12 col-lg-12 m-4">
                    <div class="card text-white success" id="card">
                        <div class="card-body">
                            <div class="p-4 code-to-copy">
                                <div>
                                    <h5>Home page</h5>
                                    <table class="table table-striped table-sm fs--1 mb-4 ">
                                        <thead class="text-white dark">
                                            <tr>
                                                <th class="dark" data-sort="name">Name</th>
                                            </tr>
                                        </thead>
                                        <tbody class="list">
                                            <tr>
                                                <td class="align-middle ps-3 name">
                                                    <div class="row gx-4 gy-5">
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle ps-3 name">
                                                    <div class="row gx-4 gy-5">
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="align-middle ps-3 name">
                                                    <div class="row gx-4 gy-5">
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
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
                                                <th class="sort border-top ps-3" data-sort="name">Name</th>
                                            </tr>
                                        </thead>
                                        <tbody class="list">
                                            <tr>
                                                <td class="align-middle ps-3 name">
                                                    <div class="row gx-4 gy-5">
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div>
                                    <h5>Advances </h5>
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
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div>
                                    <h5>Banking </h5>
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
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h5>Management Services </h5>
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
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h5>Rports </h5>
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
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
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
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                        <div class="col-12 col-sm-6 col-md-4">
                                                            data
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <div class="form-buttons-w text-center">                        
                                        <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                                            href="/home">Back </a>
                                            <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                                            type="submit">Create </button>
                                        <button class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2" name="add"
                                            type="submit">Update </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>




            </div>
        </div>
    </div>
    </div>
@endsection

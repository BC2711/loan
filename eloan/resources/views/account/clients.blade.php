@extends('layout.admmasterpage')
@section('content')
    <style>
        .form-header {
            margin-bottom: 0rem !important;
            padding-top: -6.5rem !important;
            display: block !important;
            height: 100px;
        }

        #color {
            color: black !important;
            font-weight: bolder;
        }
    </style>
    <div class="content-w">


        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="home">Home</a>
            </li>
            <li class="breadcrumb-item">
                <span>Account Holder</span>
            </li>
            <li class="breadcrumb-item">
                <span>Client KYC</span>
            </li>
        </ul>
        <!--------------------
                END - Breadcrumbs
                -------------------->

        <div class="content-i">
            <div class="content-box">
                <div class="element-wrapper">
                    <div class="element-box headeingColor " style="height: 90px; padding:7px;">

                        <h5 class="form-header" id="color">
                            <div class="col-sm-2">
                                <lable><strong class="" id="color">Clients</strong></lable>
                                <?php echo \App\Helper\CommonFunction::clients(); ?>
                            </div>
                        </h5>
                    </div>

                    <div class="element-box">

                        <form action="dealer" method="post" name="admuser">

                            <div class="controls-above-table">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <strong class="filterStrong"> Filter : </strong>
                                    </div>
                                </div>

                                <div class="row form-buttons-w">
                                    <div class="col-sm-3">
                                        <lable><strong class="" id="color">Full Name</strong>
                                        </lable>
                                        <input autocomplete="off" name="multiPageFilter_businessname" class="form-control "
                                            placeholder="Full Name" type="text">
                                    </div>
                                    <div class="col-sm-3">
                                        <lable><strong class="" id="color">NRC</strong></lable>
                                        <input autocomplete="off" name="multiPageFilter_refNumber" class="form-control "
                                            placeholder="NRC" type="text">
                                    </div>
                                    <div class="col-sm-3">
                                        <lable><strong class="" id="color">Tpin</strong></lable>
                                        <input autocomplete="off" name="multiPageFilter_code"class="form-control "
                                            placeholder="Tpin" type="text">
                                    </div>
                                    <div class="col-sm-2">
                                        <lable><strong class="" id="color">Province</strong></lable>
                                        <input autocomplete="off" name="multiPageFilter_phone" class="form-control "
                                            placeholder="Province" type="text">
                                    </div>
                                </div>


                                <div class="row form-buttons-w">
                                    <div class="col-sm-12">
                                        <button class="btn btn-sm  headeingColor" type="submit" id="color"><img
                                                id="color" class="iconImage" src="../newcss/search.png"> Search</button>

                                        <a class="btn  btn-sm headeingColor" href="dealer?mode=create" id="color"><img
                                                class="iconImage" src="../newcss/add.png" id="color"> Add New
                                            Dealer</span></a>
                                        <a class="btn  btn-sm headeingColor" href="dealer" id="color"><i
                                                class="os-icon os-icon-refresh-cw"
                                                id="color"></i><span>Clear</span></span></a>

                                        <div class="btn-group mr-1 mb-1">
                                            <button aria-expanded="false" aria-haspopup="true" id="color"
                                                class="btn headeingColor dropdown-toggle" data-toggle="dropdown"
                                                id="dropdownMenuButton1" type="button">
                                                <img class="iconImage" src="../newcss/export.png" id="color"> Download
                                                File</button>
                                            <div aria-labelledby="dropdownMenuButton1" class="dropdown-menu">
                                                <a class="dropdown-item" id="color" onclick="exportFileCSV()"
                                                    href="javascript:void(0)"> Export To CSV</a>
                                                <a class="dropdown-item" id="color" onclick="exportFile11Excel()"
                                                    href="javascript:void(0)"> Export To Excel</a>
                                                <a class="dropdown-item" id="color" onclick="exportFilePDF()"
                                                    href="javascript:void(0)"> Export To PDF</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>


                    <div class="element-box">
                        <div class=" d-none d-sm-block">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead id="color">
                                        <tr class="headeingColor" id="color">
                                            <th id="color">
                                                Count
                                            </th>
                                            <th id="color">
                                                Full Name
                                            </th>
                                            <th id="color">
                                                Date of Birth
                                            </th>

                                            <th id="color">
                                                Gender
                                            </th>
                                            <th id="color">
                                                Disability
                                            </th>
                                            <th class="text-left" id="color">
                                                NRC
                                            </th>
                                            <th class="text-left" id="color">
                                                Email
                                            </th>
                                            <th class="text-center" id="color">
                                                Phone Number
                                            </th>
                                            <th id="color">
                                                Tpin
                                            </th>
                                            <th id="color">
                                                Province
                                            </th>
                                            <th id="color">
                                                District
                                            </th>
                                            <th id="color">
                                                Consitituency
                                            </th>
                                            <th id="color">
                                                Physical Address
                                            </th>
                                            <th id="color">
                                                Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!--[[logList]]-->

                                    </tbody>
                                </table>

                                <div class="controls-below-table">

                                    <div class="table-records-pages">
                                        <ul class="ulMarginLeft">
                                            <li>
                                                <button class="paginationClass headeingColor" type="submit"
                                                    id="color" name="idx_first">First</button>
                                            </li>
                                            <li>
                                                <button class="paginationClass headeingColor" type="submit"
                                                    id="color" name="idx_previous">Previous</button>
                                            </li>
                                            <li id="color">
                                                <span class="current paginationClass7">Page: [[multiPage]]
                                                    - Lines - [[multiRow]] - Transaction - [[multiIndex]]</span>
                                            </li>
                                            <li id="color">
                                                <button class="paginationClass headeingColor" type="submit"
                                                    id="color" name="idx_next">Next</button>
                                            </li>
                                            <li id="color">
                                                <button class="paginationClass headeingColor" type="submit"
                                                    id="color" name="idx_last">Last</button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                </form>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function exportFileCSV() {
                window.open('dealer?where=[[ExportWhere]]&mode=export&exportType=CSV');
            }

            function exportFile11Excel() {
                window.open('dealer?where=[[ExportWhere]]&mode=export&exportType=EXCEL');
            }

            function exportFilePDF() {
                window.open('dealer?where=[[ExportWhere]]&mode=export&exportType=PDF');
            }
        </script>

        <script>
            function passwordsendmLinks(_id) {

                let text = "Do you really want to send password recovery link ?";
                if (confirm(text) == true) {

                    var url = "dealer?mode=reset-password&id=" + _id;
                    window.location.replace(url);

                }
            }
        </script>
    @endsection

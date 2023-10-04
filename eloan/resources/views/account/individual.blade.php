@extends('layout.admmasterpage')
@section('content')
<style>
   .form-header {
    margin-bottom: 0rem !important;
    padding-top: -6.5rem !important;
    display: block !important;
    height: 100px;
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
                <span>Individuals</span>
            </li>
        </ul>
        <!--------------------
        END - Breadcrumbs
        -------------------->

        <div class="content-i">
            <div class="content-box">


                <div class="element-wrapper">
                    <div class="element-box headeingColor " style="height: 50px; padding:7px;">

                        {{-- <h5 class="form-header">
                            Individuals
                        </h5> --}}

                        {{-- <div class="element-box-content borderTopSpd"> --}}
                            <span class="mr-2 mb-2 btn spanClass" style="margin-left: -14px;">
                                <table>
                                    <tr>
                                        <td><strong>
                                                <font  style="color: black !important; font-weight:bolder;"> Individuals</font>
                                            </strong></td>
                                        <td  >&nbsp;</td>
                                        <td><strong>
                                                <font  style="color: black !important;font-weight:bolder;">=</font>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td><strong>
                                                <font  style="color: black !important;font-weight:bolder;">0</font>
                                            </strong></td>
                                    </tr>
                                </table>
                            </span><!-- comment -->
                            <span class="mr-2 mb-2 btn spanClass">
                                <table>
                                    <tr>
                                        <td><strong>
                                                <font style="color: black !important;font-weight:bolder;">Active</font>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td><strong>
                                                <font  style="color: black !important;font-weight:bolder;">=</font>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td><strong>
                                                <font  style="color: black !important;font-weight:bolder;">0</font>
                                            </strong></td>
                                    </tr>
                                </table>
                            </span>
                            <span class="mr-2 mb-2 btn spanClass">
                                <table>
                                    <tr>
                                        <td><strong>
                                                <font style="color: black !important;font-weight:bolder;">In-Active</font>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td><strong>
                                                <font style="color: black !important;font-weight:bolder;">=</font>
                                            </strong></td>
                                        <td>&nbsp;</td>
                                        <td><strong>
                                                <font style="color: black !important;font-weight:bolder;">0</font>
                                            </strong></td>
                                    </tr>
                                </table>
                            </span>
                        {{-- </div> --}}
                    </div>

                    <div class="element-box">
                        <div class="ppError">[[errorMsg]]</div>[[successMsg]]
                        <form action="dealer" method="post" name="admuser">

                            <div class="controls-above-table">
                                <div class="row">
                                    <div class="col-sm-2">
                                        <strong class="filterStrong"> Filter : </strong>
                                    </div>
                                </div>

                                <div class="row form-buttons-w">


                                    <div class="col-sm-3">
                                        <lable><strong class=""> Trading As | Business Name</strong></lable>
                                        <input autocomplete="off"
                                            name="multiPageFilter_businessname" class="form-control "
                                            placeholder="Trading As | Business Name" type="text">
                                    </div>
                                    <div class="col-sm-3">
                                        <lable><strong class=""> Deposit Reference</strong></lable>
                                        <input autocomplete="off" 
                                            name="multiPageFilter_refNumber" class="form-control "
                                            placeholder="Deposit Reference" type="text">
                                    </div>
                                    <div class="col-sm-3">
                                        <lable><strong class=""> Contact Name</strong></lable>
                                        <input autocomplete="off"
                                            name="multiPageFilter_code"class="form-control " placeholder="Contact Name"
                                            type="text">
                                    </div>
                                    <div class="col-sm-2">
                                        <lable><strong class=""> Contact Number</strong></lable>
                                        <input autocomplete="off" 
                                            name="multiPageFilter_phone" class="form-control " placeholder="Contact Number"
                                            type="text">
                                    </div>
                                    <div class="col-sm-2">

                                        <lable><strong class=""> Order By </strong></lable>
                                        [[getOrderBy]]

                                    </div>

                                </div>


                                <div class="row form-buttons-w">
                                    <div class="col-sm-12">
                                        <button class="btn btn-sm  headeingColor" type="submit"><img class="iconImage"
                                                src="../newcss/search.png"> Search</button>

                                        <a class="btn  btn-sm headeingColor" href="dealer?mode=create"><img
                                                class="iconImage" src="../newcss/add.png"> Add New Dealer</span></a>
                                        <a class="btn  btn-sm headeingColor" href="dealer"><i
                                                class="os-icon os-icon-refresh-cw"></i><span>Clear</span></span></a>



                                        <div class="btn-group mr-1 mb-1">
                                            <button aria-expanded="false" aria-haspopup="true"
                                                class="btn headeingColor dropdown-toggle" data-toggle="dropdown"
                                                id="dropdownMenuButton1" type="button">
                                                <img class="iconImage" src="../newcss/export.png"> Download File</button>
                                            <div aria-labelledby="dropdownMenuButton1" class="dropdown-menu">
                                                <a class="dropdown-item" onclick="exportFileCSV()"
                                                    href="javascript:void(0)"> Export To CSV</a>
                                                <a class="dropdown-item" onclick="exportFile11Excel()"
                                                    href="javascript:void(0)"> Export To Excel</a>
                                                <a class="dropdown-item" onclick="exportFilePDF()"
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
                                <!--------------------
    START - Basic Table
    -------------------->
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr class="headeingColor">
                                            <th>
                                                Count
                                            </th>
                                            <th>
                                                Trading As | Business Name
                                            </th>
                                            <th>
                                                Deposit Reference
                                            </th>

                                            <th>
                                                Contact Name
                                            </th>
                                            <th>
                                                Contact Number
                                            </th>
                                            <th class="text-left">
                                                Address
                                            </th>
                                            <th class="text-left">
                                                Region
                                            </th>
                                            <th class="text-center">
                                                Status
                                            </th>
                                            <th>
                                                No Of Stations
                                            </th>
                                            <th>
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
                                                    name="idx_first">First</button>
                                            </li>
                                            <li>
                                                <button class="paginationClass headeingColor" type="submit"
                                                    name="idx_previous">Previous</button>
                                            </li>
                                            <li>
                                                <span class="current paginationClass7">Page: [[multiPage]]
                                                    - Lines - [[multiRow]] - Transaction - [[multiIndex]]</span>
                                            </li>
                                            <li>
                                                <button class="paginationClass headeingColor" type="submit"
                                                    name="idx_next">Next</button>
                                            </li>
                                            <li>
                                                <button class="paginationClass headeingColor" type="submit"
                                                    name="idx_last">Last</button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                </form>
                                <!--------------------
    END - Basic Table
    -------------------->
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

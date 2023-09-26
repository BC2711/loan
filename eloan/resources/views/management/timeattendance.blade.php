@extends('layout.main')
@section('content')
    <style>
        #card1 {
            border-radius: 0px;
            width: 150px;
        }
.table1{
    width: 30px;
}

        #btn:hover {
            background-color: #7db37d !important;
        }
    </style>
    <nav class="mb-2" aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item active"> Management Services</li>
            <li class="breadcrumb-item"><a href="/employee">Employee</a></li>
            <li class="breadcrumb-item active">Time Attendance</li>
        </ol>
    </nav>

    <div class="col-sm-3 col-md-6 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <h6 class="card-title text-dark"> Biness Dawkins </h6>
                <hr />
                <div class="row">
                    <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <h6 class="card-title text-dark text-center"   id="card1"> Days Absent </h6>
                        <div class="card text-white success" style="background-color:#b5abab;"  id="card1">
                            <div class="card-body">                              
                                <h6 class="text-center">2</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <h6 class="card-title text-dark text-center" id="card1"> Pre-approved Absences </h6>
                        <div class="card text-white success" style="background-color:#b5abab;"  id="card1">
                            <div class="card-body">                            
                                 <h6  class="text-center">262</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <h6 class="card-title text-dark text-center" id="card1"> Overtime Hours </h6>
                        <div class="card text-white success" style="background-color:#7070d9;"  id="card1">
                            <div class="card-body">                              
                                  <h6  class="text-center">1</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <h6 class="card-title text-dark text-center" id="card1">Working Hours </h6>
                        <div class="card text-white success" style="background-color:#d9b778;"  id="card1">
                            <div class="card-body">                             
                                  <h6  class="text-center">0</h6>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="col-sm-1 col-md-1 col-lg-2 ml-0">
                        <div class="card text-white "style="background-color:#9be79b;"  id="card1">
                            <div class="card-body">
                                <h6 class="card-title text-dark text-center"> Bereavement </h6>
                                  <h6  class="text-center">1</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-1 col-md-1 col-lg-2 m-0">
                        <div class="card text-white success" style="background-color:#dddd6b;" id="card1">
                            <div class="card-body">
                                <h6 class="card-title text-dark text-center"> Accrured </h6>
                                  <h6  class="text-center">0</h6>
                            </div>
                        </div>
                    </div> --}}
                </div>

            </div>
        </div>
    </div>
    <div class="col-sm-6 col-md-9 col-lg-12 m-4">
        <div class="card text-white success" id="card">
            <div class="card-body">
                <div data-list='{"valueNames":["Name","Surname","Contact","Address","Email","Status"],"page":6}'>
                    <div class="row align-items-end justify-content-between pb-5 g-3">
                        {{-- <div class="col-auto">
                        <div class="form-floating mb-3">
                            <input class="form-control" id="floatingInput" type="datetime-local"
                                placeholder="name@example.com" />
                            <label for="floatingInput">Year</label>
                        </div>
                    </div> --}}
                        <h6 class="card-title text-dark"> Time Attendance </h6>
                        <div class="col-12 col-md-auto">
                            <div class="row g-0 gy-0">
                                {{-- <h6 class="card-title text-dark"> Time Attendance </h6> --}}
                                <div class="row gx-0 gy-0">
                                    <div class="col-12 col-sm-6 col-md-6">
                                        <div class="col-auto flex-1">
                                            <div class="search-box">
                                                <form class="position-relative" data-bs-toggle="search"
                                                    data-bs-display="static">
                                                    <input class="form-control form-control-sm" type="number"
                                                        minlength="4" maxlength="4" value="2023" placeholder="Year"
                                                        aria-label="Year" />
                                                    <label for="floatingInput">Year</label>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                    {{-- <div class="col-12 col-sm-6 col-md-6">
                                        <div class="col-auto flex-0">
                                            <div class="search-box text-left" style="margin-left:690px;">
                                                <form class="position-relative" data-bs-toggle="search"
                                                    data-bs-display="static">
                                                    <input class="form-control search-input search form-control-sm"
                                                        type="search" placeholder="Search" aria-label="Search" />
                                                    <span class="fas fa-search search-box-icon"></span>
                                                </form>
                                            </div>
                                        </div>
                                    </div> --}}
                                </div>
                                <div class="col-auto">
                                    {{-- <a class="btn btn-sm btn-phoenix-secondary bg-white hover-bg-100 me-2"
                                        href="/createemployee">Add new Employee</a> --}}

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
                    <div class="table-responsive mx-n1 px-0 scrollbar">
                        <table class="table table-bordered  table-striped">
                            <thead style="background-color:green;">
                                <tr>
                                    <th class="sort" scope="col" data-sort=" Name">Months</th>
                                    <th class="sort" scope="col" data-sort="Surname ">Mon</th>
                                    <th class="sort" scope="col" data-sort="Address">Tue</th>
                                    <th class="sort" scope="col" data-sort="Contact">Wed</th>
                                    <th class="sort" scope="col" data-sort="Email">Thu</th>
                                    <th class="sort" scope="col" data-sort="Address"> Fri</th>
                                    <th class="sort" scope="col" data-sort="Address">Sat</th>
                                    <th class="sort" scope="col" data-sort="Address">Sun</th>

                                    <th class="sort" scope="col"  data-sort="Surname ">Mon</th>
                                    <th class="sort" scope="col"  data-sort="Address">Tue</th>
                                    <th class="sort" scope="col"  data-sort="Contact">Wed</th>
                                    <th class="sort" scope="col"  data-sort="Email">Thu</th>
                                    <th class="sort" scope="col"  data-sort="Address"> Fri</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sat</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sun</th>

                                    <th class="sort" scope="col"  data-sort="Surname ">Mon</th>
                                    <th class="sort" scope="col"  data-sort="Address">Tue</th>
                                    <th class="sort" scope="col"  data-sort="Contact">Wed</th>
                                    <th class="sort" scope="col"  data-sort="Email">Thu</th>
                                    <th class="sort" scope="col"  data-sort="Address"> Fri</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sat</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sun</th>

                                    <th class="sort" scope="col"  data-sort="Surname ">Mon</th>
                                    <th class="sort" scope="col"  data-sort="Address">Tue</th>
                                    <th class="sort" scope="col"  data-sort="Contact">Wed</th>
                                    <th class="sort" scope="col"  data-sort="Email">Thu</th>
                                    <th class="sort" scope="col"  data-sort="Address"> Fri</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sat</th>
                                    <th class="sort" scope="col"  data-sort="Address">Sun</th>

                                </tr>
                            </thead>
                            <tbody class="list" id="table-striped">
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static text-center">
                                    <td class="white-space-nowrap Name">

                                    </td>

                                    <td colspan="7">week 1</td>


                                    <td colspan="7">week 2</td>


                                    <td colspan="7" >week 3</td>


                                    <td colspan="7" >week 4</td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        January
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        February
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td>25</td>
                                    <td>26</td>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        March
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td>25</td>
                                    <td>26</td>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        April
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        May
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td>25</td>
                                    <td>26</td>
                                    <td>27</td>
                                    <td>28</td>
                                    <td>29</td>
                                    <td>30</td>
                                    <td>31</td>
                                    <td></td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        June
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>34</td>
                                    <td>25</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        July
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>19</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        August
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td>25</td>
                                    <td>26</td>
                                    <td>27</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        September
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        October
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    </td>

                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        November
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>
                                    <td>25</td>
                                    <td>26</td>
                                    </td>



                                </tr>
                                <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                                    <td class="white-space-nowrap Name">
                                        December
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>5</td>
                                    <td>6</td>
                                    <td>7</td>
                                    <td>8</td>
                                    <td>9</td>
                                    <td>10</td>
                                    <td>11</td>
                                    <td>12</td>
                                    <td>13</td>
                                    <td>14</td>
                                    <td>15</td>
                                    <td>16</td>
                                    <td>17</td>
                                    <td>18</td>
                                    <td>18</td>
                                    <td>20</td>
                                    <td>21</td>
                                    <td>22</td>
                                    <td>23</td>
                                    <td>24</td>

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

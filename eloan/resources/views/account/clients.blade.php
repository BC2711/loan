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
        #card1:hover {
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
          
        }
        h6{
            color: black !important;
        }
        /* a{
            text-decoration: none !important;
        } */
        .element-wrapper{
            padding-bottom: 0px !important;
        }
    </style>
    <div class="content-w">


        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="home">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a href="{{route('accounts')}}"><span>Accounts </span></a>
            </li>
           
        </ul>
        <!--------------------
            END - Breadcrumbs
            -------------------->

           
        <div class="content-i">
            <div class="content-box">
                <div class="element-wrapper">
                    <div class="element-box headeingColor">
                       <h6>Clients KYC</h6>
                    </div>
                </div>
            </div>
            <div class="content-box">
                <div class="element-wrapper">
                    <div class="element-box headeingColor">
                        <?php echo \App\Helper\CommonFunction::accountSubMenuClients(); ?>
                    </div>
                </div>
            </div>
        </div>

    </div>
    @endsection

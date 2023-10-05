<?php

namespace App\Helper;

use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\DB;
use App\Models\Menu;

class CommonFunction
{

    public static function navMenu()
    {
        $array = '';
        $menu = array(
            [
                "menuName" => "Home",
                "url" => "/#",
                "icon" => "#",
                "sub" => [
                    [
                        "menuName" => "Dashboard",
                        "icon" => "",
                        "url" => "/home",
                        "sub" => []
                    ]
                ]
            ],
            [
                "menuName" => "Accounts",
                "url" => "/#",
                "icon" => "",
                "sub" => [

                    [

                        "menuName" => "Client KYC",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [
                            [

                                "menuName" => "Individuals",
                                "url" => "individuals",
                                "icon" => "",
                                "sub" => "",
                            ],
                            [
                                "menuName" => "Cooperatives",
                                "url" => "/cooperative",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Limited Companies",
                                "url" => "companies",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Clubs | Societies | Trusts",
                                "url" => "/clubs",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Others",
                                "url" => "/others",
                                "icon" => "",
                                "sub" => [],
                            ]
                        ]
                    ], [

                        "menuName" => "Account Requests",
                        "url" => "request",
                        "icon" => "",
                        "sub" => [],
                    ],

                ]
            ],
            [
                "menuName" => "Banking",
                "url" => "/#",
                "icon" => "",
                "sub" => [],
            ],
            [
                "menuName" => "Management Services",
                "url" => "/#",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Commission Fees & Charges",
                        "url" => "/commission",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Email Logs",
                        "url" => "/email",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Employees Logs",
                        "url" => "/employee",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "System User",
                        "url" => "/user",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "System Permission",
                        "url" => "/permission",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "SMS Logs",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Payroll ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Loan ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Loan Scope ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Documents Library ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                ],
            ],
            [
                "menuName" => "Reports",
                "url" => "/#",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Loan Status",
                        "url" => "/status",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Customers",
                        "url" => "/customer",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Payments",
                        "url" => "/employee",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Forcasting & Predictive",
                        "url" => "/user",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => " Loan Originator",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Audit & Security",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Compliance ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Operational",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Risk Assessment ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Collection ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Financial ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],

                ],
            ],
            [
                "menuName" => "Query",
                "url" => "/sms",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Account Activity",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Account Information",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Transaction Query",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ]
                ],
            ]
        );

        foreach ($menu as $key => $value) {
            if ($value['menuName'] == 'Home') {
                $array .= '<li class="nav-item dropdown">';
                $array .= '
                <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-chart-pie"></span>
                    ' . $value['menuName'] . '
                </a> ';
                $array .= '<ul class="dropdown-menu navbar-dropdown-caret">';
                foreach ($value['sub'] as $key => $value1) {
                    $array .= '<li>
                                    <a class="dropdown-item active" href="  ' . $value1['url'] . '">
                                        <div class="dropdown-item-wrapper">
                                            <span class="me-2 uil" data-feather="shopping-cart"></span>
                                            <h6>' . $value1['menuName'] . '</h6>
                                        </div>
                                    </a>
                                 </li>';
                }
                $array .= '</ul></li>';
            }
            if ($value['menuName'] == 'Accounts') {
                $array .= '   <li class="nav-item dropdown">';
                $array .= '  <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                                    <span class="uil fs-0 me-2 uil-cube"></span>
                                   ' . $value['menuName'] . '
                                </a>';
                $array .= '  <ul class="dropdown-menu navbar-dropdown-caret">';

                foreach ($value['sub'] as $key => $value1) {

                    if ($value1['menuName'] == 'Client KYC') {
                        $array .= ' <li class="dropdown">';
                        $array .= '  <a class="dropdown-item dropdown-toggle" id="CRM" href="' . $value1['url'] . '" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                                            <div class="dropdown-item-wrapper">
                                                <span class="uil fs-0 uil-angle-right lh-1 dropdown-indicator-icon"></span>
                                                <span>
                                                    <span class="me-2 uil" data-feather="phone"></span>
                                                   ' . $value1['menuName'] . '
                                                </span>
                                            </div>
                                        </a>';
                        $array .= ' <ul class="dropdown-menu">';
                        foreach ($value1['sub'] as $key => $value2) {
                            $array .= ' <li>
                                                <a class="dropdown-item" href="' . $value2['url'] . '">
                                                    <div class="dropdown-item-wrapper">
                                                        <span class="me-2 uil"></span>
                                                       <h6>' . $value2['menuName'] . '</h6>
                                                    </div>
                                                </a>
                                             </li>';
                        }

                        $array .= ' </ul>';
                        $array .= '</li>';
                    }

                    if ($value1['menuName'] == 'Account Requests') {
                        $array .= ' <li>
                                            <a class="dropdown-item" href=" ' . $value1['url'] . '">
                                                <div class="dropdown-item-wrapper">
                                                    <span class="me-2 uil" data-feather="calendar"></span>
                                                   <h6> ' . $value1['menuName'] . '</h6>
                                                </div>
                                            </a>
                                        </li>';
                    }
                }
                $array .= ' </ul>';
                $array .= ' </li>';
            }
            if ($value['menuName'] == 'Banking') {
                $array .= '   <li class="nav-item dropdown">';
                $array .= ' <a class="nav-link dropdown-toggle lh-1" href=" ' . $value['url'] . '" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-files-landscapes-alt"></span>
                   ' . $value['menuName'] . '
                </a>';

                $array .= ' </li>';
            }

            if ($value['menuName'] == 'Management Services') {
                $array .= '  <li class="nav-item dropdown">';
                $array .= ' <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-puzzle-piece"></span>
                  ' . $value['menuName'] . '
                </a>';
                $array .= ' <ul class="dropdown-menu navbar-dropdown-caret dropdown-menu-card py-0">';
                $array .= '  <div class="border-0 scrollbar" style="max-height: 60vh;">';
                $array .= ' <div class="px-3 pt-4 pb-3 img-dropdown">';
                $array .= ' <div class="row">';
                foreach ($value['sub'] as $key => $value3) {
                    $array .= '<div class="col-sm-1 col-md-2 col-lg-6 m-0">
                   
                                    <a class="dropdown-link" href="' . $value3['url'] . '">         
                                        <h6>' . $value3['menuName'] . '</h6>
                                    </a>
                                </div>';
                }

                $array .= '  </div>';
                $array .= ' </div>';
                $array .= ' </div>';
                $array .= ' </ul>';
                $array .= ' </li>';
            }

            if ($value['menuName'] == 'Reports') {
                $array .= '  <li class="nav-item dropdown">';
                $array .= ' <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-puzzle-piece"></span>
                  ' . $value['menuName'] . '
                </a>';
                $array .= ' <ul class="dropdown-menu navbar-dropdown-caret dropdown-menu-card py-0">';
                $array .= '  <div class="border-0 scrollbar" style="max-height: 60vh;">';
                $array .= ' <div class="px-1 pt-2 pb-1 img-dropdown">';
                $array .= ' <div class="row">';
                foreach ($value['sub'] as $key => $value3) {
                    $array .= '<div class="col-sm-1 col-md-2 col-lg-6 m-0">
                   
                                    <a class="dropdown-link" href="' . $value3['url'] . '">         
                                        <h6>' . $value3['menuName'] . '</h6>
                                    </a>
                                </div>';
                }

                $array .= '  </div>';
                $array .= ' </div>';
                $array .= ' </div>';
                $array .= ' </ul>';
                $array .= ' </li>';
            }

            if ($value['menuName'] == 'Query') {
                $array .= ' <li class="nav-item dropdown">';
                $array .= '<a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                                <span class="uil fs-0 me-2 uil-document-layout-right"></span>
                              ' . $value['menuName'] . '
                            </a>';
                $array .= '<ul class="dropdown-menu navbar-dropdown-caret">';
                foreach ($value['sub'] as $key => $value4) {
                    $array .= ' <li>
                    <a class="dropdown-item" href="documentation/getting-started.html">
                        <div class="dropdown-item-wrapper">
                            <span class="me-2 uil" data-feather="life-buoy"></span>
                           <h6>' . $value4['menuName'] . '</h6>
                        </div>
                    </a>
                </li>';
                }


                $array .= '</ul>';
                $array .= '</li>';
            }
        }
        return $array;
    }

    public static function sidNavMenu()
    {
        $array = '';
        $menu = array(
            [
                "menuName" => "Home",
                "url" => "/#",
                "icon" => "#",
                "sub" => [
                    [
                        "menuName" => "Dashboard",
                        "icon" => "",
                        "url" => "/home",
                        "sub" => []
                    ]
                ]
            ],
            [
                "menuName" => "Accounts",
                "url" => "/#",
                "icon" => "",
                "sub" => [

                    [

                        "menuName" => "Client KYC",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [
                            [

                                "menuName" => "Individuals",
                                "url" => "/individual",
                                "icon" => "",
                                "sub" => "",
                            ],
                            [
                                "menuName" => "Cooperatives",
                                "url" => "/cooperative",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Limited Companies",
                                "url" => "companies",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Clubs | Societies | Trusts",
                                "url" => "/clubs",
                                "icon" => "",
                                "sub" => [],
                            ],
                            [

                                "menuName" => "Others",
                                "url" => "/others",
                                "icon" => "",
                                "sub" => [],
                            ]
                        ]
                    ], [

                        "menuName" => "Account Requests",
                        "url" => "/requests",
                        "icon" => "",
                        "sub" => [],
                    ],

                ]
            ],
            [
                "menuName" => "Banking",
                "url" => "/#",
                "icon" => "",
                "sub" => [],
            ],
            [
                "menuName" => "Management Services",
                "url" => "/#",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Commission Fees & Charges",
                        "url" => "/commission",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Email Logs",
                        "url" => "/email",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Employees Logs",
                        "url" => "/employee",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "System User",
                        "url" => "/user",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "System Permission",
                        "url" => "/permission",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "SMS Logs",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Payroll ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Loan ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Loan Scope ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Documents Library ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                ],
            ],
            [
                "menuName" => "Reports",
                "url" => "/#",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Loan Status",
                        "url" => "/status",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Customers",
                        "url" => "/customer",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Payments",
                        "url" => "/employee",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Forcasting & Predictive",
                        "url" => "/user",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => " Loan Originator",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Audit & Security",
                        "url" => "/#",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Compliance ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Operational",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Risk Assessment ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Collection ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Financial ",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],

                ],
            ],
            [
                "menuName" => "Query",
                "url" => "/sms",
                "icon" => "",
                "sub" => [
                    [
                        "menuName" => "Account Activity",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Account Information",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ],
                    [
                        "menuName" => "Transaction Query",
                        "url" => "/sms",
                        "icon" => "",
                        "sub" => [],
                    ]
                ],
            ]
        );

        foreach ($menu as $key => $value) {
            if ($value['menuName'] == 'Home') {
                $array .= '  <li class="nav-item">';

                $array .= ' <div class="nav-item-wrapper">';
                $array .= '<a class="nav-link dropdown-indicator label-1" href="#nv-home" role="button"
                                data-bs-toggle="collapse" aria-expanded="true" aria-controls="nv-home">
                                <div class="d-flex align-items-center">
                                    <div class="dropdown-indicator-icon">
                                        <span class="fas fa-caret-right"></span>
                                    </div>
                                    <span class="nav-link-icon">
                                        <span data-feather="pie-chart"></span>
                                    </span>
                                    <span class="nav-link-text">' . $value['menuName'] . '</span>
                                </div>
                            </a>';
                $array .= '<div class="parent-wrapper label-1">';
                $array .= '<ul class="nav collapse parent show" data-bs-parent="#navbarVerticalCollapse" id="nv-home">';
                $array .= '<li class="collapsed-nav-item-title d-none">' . $value['menuName'] . '</li>';
                $array .= '<li class="nav-item">';
                foreach ($value['sub'] as $key => $value1) {
                    $array .= '<a class="nav-link active" href="' . $value1['url'] . '" data-bs-toggle=""
                                    aria-expanded="false">
                                    <div class="d-flex align-items-center">
                                        <span class="nav-link-text">' . $value1['menuName'] . '</span>
                                    </div>
                                </a>';
                }


                $array .= '</li>';

                $array .= '</ul>';
                $array .= '</div>';
                $array .= '</div>';
                $array .= '</li>';
            }
            if ($value['menuName'] == 'Accounts') {
                $array .= '<li class="nav-item">';
                $array .= '<p class="navbar-vertical-label">' . $value['menuName'] . '</p>';
                $array .= ' <hr class="navbar-vertical-line" />';
                foreach ($value['sub'] as $key => $value2) {
                    if ($value2['menuName'] == 'Client KYC') {
                        $array .= '<div class="nav-item-wrapper">';
                        $array .= '<a class="nav-link dropdown-indicator label-1" href="#nv-e-commerce" role="button"
                                        data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-e-commerce">
                                        <div class="d-flex align-items-center">
                                            <div class="dropdown-indicator-icon">
                                                <span class="fas fa-caret-right"></span>
                                            </div>
                                            <span class="nav-link-icon">
                                                <span data-feather="shopping-cart"></span>
                                            </span>
                                            <span class="nav-link-text">' . $value2['menuName'] . '</span>
                                        </div>
                                    </a>';
                        $array .= '<div class="parent-wrapper label-1">';
                        $array .= '<ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="nv-e-commerce">';
                        $array .= ' <li class="collapsed-nav-item-title d-none">' . $value2['menuName'] . '</li>';
                        $array .= '<li class="nav-item">';
                        $array .= '<div class="parent-wrapper">';
                        $array .= '<ul class="nav collapse parent show" data-bs-parent="#e-commerce"  id="nv-admin">';
                        $array .= '<li class="nav-item">';
                        foreach ($value2['sub'] as $key => $value3) {
                            $array .= '<a class="nav-link" href="' . $value3['url'] . '"
                                                    data-bs-toggle="" aria-expanded="false">
                                                    <div class="d-flex align-items-center">
                                                        <span class="nav-link-text">' . $value3['menuName'] . '</span>
                                                    </div>
                                            </a>';
                        }


                        $array .= '</li>';

                        $array .= '</ul>';
                        $array .= '</div>';
                        $array .= '</li>';

                        $array .= '</ul>';
                        $array .= '</div>';
                        $array .= '</div>';
                    }

                    if ($value2['menuName'] == 'Account Requests') {
                        $array .= '<div class="nav-item-wrapper">';
                        $array .= ' <a class="nav-link label-1" href="apps/calendar.html" role="button" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center">
                                                <span class="nav-link-icon">
                                                    <span data-feather="calendar"></span>
                                                </span>
                                                <span class="nav-link-text-wrapper">
                                                    <span class="nav-link-text">' . $value2['menuName'] . '</span>
                                                </span>
                                        </div>
                                    </a>';
                        $array .= '</div>';
                    }
                }

                $array .= '</li>';
            }
            if ($value['menuName'] == 'Banking') {
                $array .= '   <li class="nav-item">';

                $array .= ' <p class="navbar-vertical-label">' . $value['menuName'] . '</p>';
                $array .= ' <hr class="navbar-vertical-line"/>';

                $array .= ' <div class="nav-item-wrapper">';

                $array .= ' <a class="nav-link label-1" href="' . $value['url'] . '" data-bs-toggle="" aria-expanded="false">
                     <div class="d-flex align-items-center">
                         <span class="nav-link-icon">
                             <span data-feather="compass"></span>
                         </span>
                         <span class="nav-link-text-wrapper">
                             <span class="nav-link-text">' . $value['menuName'] . '</span>
                         </span>
                     </div>
                 </a>';


                $array .= ' </div>';

                $array .= ' </li>';
            }
            if ($value['menuName'] == 'Management Services') {
                $array .= ' <li class="nav-item">';

                $array .= '<p class="navbar-vertical-label">' . $value['menuName'] . '</p>';
                $array .= '<hr class="navbar-vertical-line"/>';

                $array .= '<div class="nav-item-wrapper">';
                $array .= '<a class="nav-link dropdown-indicator label-1" href="#nv-forms" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-forms">
                                        <div class="d-flex align-items-center">
                                            <div class="dropdown-indicator-icon">
                                                <span class="fas fa-caret-right"></span>
                                            </div>
                                            <span class="nav-link-icon">
                                                <span data-feather="file-text"></span>
                                            </span>
                                            <span class="nav-link-text">' . $value['menuName'] . '</span>
                                        </div>
                                    </a>';
                $array .= '<div class="parent-wrapper label-1">';
                $array .= '<ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="nv-forms">';
                $array .= '<li class="collapsed-nav-item-title d-none">' . $value['menuName'] . '</li>';
                foreach ($value['sub'] as $key => $value4) {
                    $array .= '<li class="nav-item">
                                                <a class="nav-link" href="' . $value4['url'] . '" data-bs-toggle="" aria-expanded="false">
                                                    <div class="d-flex align-items-center">
                                                        <h6><span class="nav-link-text">' . $value4['menuName'] . '</span></h6>
                                                    </div>
                                                </a>
                                            
                                            </li>';
                }


                $array .= '</ul>';
                $array .= '</div>';
                $array .= '</div>';

                $array .= '</li>';
            }
            if ($value['menuName'] == 'Reports') {
                $array .= '  <li class="nav-item">';

                $array .= '<p class="navbar-vertical-label">' . $value['menuName'] . '</p>';
                $array .= '<hr class="navbar-vertical-line"/>';

                $array .= '<div class="nav-item-wrapper">';
                $array .= ' <a class="nav-link dropdown-indicator label-1" href="#nv-customization" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-customization">
                        <div class="d-flex align-items-center">
                            <div class="dropdown-indicator-icon">
                                <span class="fas fa-caret-right"></span>
                            </div>
                            <span class="nav-link-icon">
                                <span data-feather="settings"></span>
                            </span>
                            <span class="nav-link-text">' . $value['menuName'] . '</span>
                        </div>
                    </a>';
                $array .= '<div class="parent-wrapper label-1">';
                $array .= '<ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="nv-customization">';
                $array .= ' <li class="collapsed-nav-item-title d-none">' . $value['menuName'] . '</li>';
                foreach ($value['sub'] as $key => $value7) {
                    $array .= ' <li class="nav-item">
                    <a class="nav-link" href="documentation/customization/configuration.html" data-bs-toggle="" aria-expanded="false">
                        <div class="d-flex align-items-center">
                        <h6><span class="nav-link-text">
                           ' . $value7['menuName'] . '</span></h6>
                        </div>
                    </a>
                   
                </li>';
                }


                $array .= '</ul>';
                $array .= ' </div>';
                $array .= '</div>';


                $array .= '</li>';
            }
            if ($value['menuName'] == 'Query') {
                $array .= '  <li class="nav-item">';

                $array .= '<p class="navbar-vertical-label">' . $value['menuName'] . '</p>';
                $array .= '<hr class="navbar-vertical-line"/>';

                $array .= '<div class="nav-item-wrapper">';
                $array .= ' <a class="nav-link dropdown-indicator label-1" href="#nv-query" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-query">
                        <div class="d-flex align-items-center">
                            <div class="dropdown-indicator-icon">
                                <span class="fas fa-caret-right"></span>
                            </div>
                            <span class="nav-link-icon">
                                <span data-feather="settings"></span>
                            </span>
                            <span class="nav-link-text">' . $value['menuName'] . '</span>
                        </div>
                    </a>';
                $array .= '<div class="parent-wrapper label-1">';
                $array .= '<ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="nv-query">';
                $array .= ' <li class="collapsed-nav-item-title d-none">' . $value['menuName'] . '</li>';
                foreach ($value['sub'] as $key => $value7) {
                    $array .= ' <li class="nav-item">
                    <a class="nav-link" href="documentation/customization/configuration.html" data-bs-toggle="" aria-expanded="false">
                        <div class="d-flex align-items-center">
                        <h6><span class="nav-link-text">
                           ' . $value7['menuName'] . '</span></h6>
                        </div>
                    </a>
                   
                </li>';
                }


                $array .= '</ul>';
                $array .= ' </div>';
                $array .= '</div>';


                $array .= '</li>';
            }
        }
        return $array;
    }

    public static function getCurrentDate()
    {
        return Carbon::now();
    }

    public static function mainMenu()
    {
        $menu = '';
        $menu1 = Menu::all();
      
        foreach ($menu1 as $key => $value)
        {
          
            if($value->menuNname == 'Home')
            {
                    $menu .= '<li class="has-sub-menu ">';
                    $menu.=' <a href="' . $value->menuUrl . '">
                                <div class="icon-w">
                                    <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                                </div>
                                <span>' . strtoupper($value['menuNname']) . '</span>
                            </a>';
                    $menu .= '<div class="sub-menu-w">';
                    
                    $menu .= '<div class="sub-menu-i">';
                  
                  
               
                 $submenu = DB::table('menus')->where('parent_id', '=', $value->id)->where('menuType', '=', 'SUBMENU')->get();

                    $menu .= '<ul class="sub-menu">';
                    foreach ($submenu as $key => $value1) {
                       
                        $menu .='<li>';
                        $menu .='<a href="'.$value1->menuUrl.'"><h6>'.$value1->menuNname.'</h6></a>';
                        $menu .='</li>';
                     
                    }
                
                    $menu .= '</ul>';
                    
            }

            else if($value['menuNname'] == 'Accounts')
            {
                $menu .= '<li class="has-sub-menu ">';
                $menu.=' <a href="' . $value->menuUrl . '">
                            <div class="icon-w">
                                <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                            </div>
                            <span>' . strtoupper($value['menuNname']) . '</span>
                        </a>';
               
                $menu .='</li>';
                    
                
                  
                   
            }

            else if($value['menuNname'] == 'Banking')
            {
                $menu .= '<li class="has-sub-menu ">';
                $menu.=' <a href="' . $value->menuUrl . '">
                            <div class="icon-w">
                                <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                            </div>
                            <span>' . strtoupper($value['menuNname']) . '</span>
                        </a>';
               
                $menu .='</li>';
              
            }

            else if($value['menuNname'] == 'Management Services')
            {
                $menu .= '<li class="has-sub-menu ">';
                $menu.=' <a href="' . $value->menuUrl . '">
                            <div class="icon-w">
                                <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                            </div>
                            <span>' . strtoupper($value['menuNname']) . '</span>
                        </a>';
                $menu .= '<div class="sub-menu-w">';
                
                $menu .= '<div class="sub-menu-i">';
                $menu .= '<ul class="sub-menu" style="width: 700px;">';
              
                $submenu = Menu::where('parent_id', $value->parent_id);   $submenu = DB::table('menus')->where('parent_id', '=', $value->id)->where('menuType', '=', 'SUBMENU')->get();

                $menu .= '<div class="row">';
                foreach ($submenu as $key => $value1) {
                    $menu .='<div class="col-md-3">';
                    $menu .='<li>';
                    $menu .='<a href="'.$value1->menuUrl.'"><h6>'.$value1->menuNname.'</h6></a>';
                    $menu .='</li>';
                    $menu .= '</div>';
                }
                $menu .= '</div>';
               
                $menu .= '</ul>';
            }

         
            else if($value['menuNname'] == 'Reports')
            {
                $menu .= '<li class="has-sub-menu ">';
                $menu.=' <a href="' . $value->menuUrl . '">
                            <div class="icon-w">
                                <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                            </div>
                            <span>' . strtoupper($value['menuNname']) . '</span>
                        </a>';
                $menu .= '<div class="sub-menu-w">';
                
                $menu .= '<div class="sub-menu-i">';
                $menu .= '<ul class="sub-menu">';
                $menu .='<li>';
                if($value->menuType =='SUBMENU'){
                foreach ($value->menuType as $key => $value1) {
               
                    $menu .='<a href="'.$value1->menuUrl.'><h3>'.$value1->menuName.'</h3></a>';
                 
                }
            }
                $menu .='</li>';
                $menu .= '</ul>';
            }

            else if($value['menuNname'] == 'Query')
            {
                $menu .= '<li class="has-sub-menu ">';
                $menu.=' <a href="' . $value->menuUrl . '">
                            <div class="icon-w">
                                <div class=""><img style="width: 22px;" src="/newcss/' . $value['icon'] . '"></div>
                            </div>
                            <span>' . strtoupper($value['menuNname']) . '</span>
                        </a>';
                $menu .= '<div class="sub-menu-w">';
                
                $menu .= '<div class="sub-menu-i">';
                $menu .= '<ul class="sub-menu">';
                $menu .='<li>';
                if($value->menuType =='SUBMENU'){
                foreach ($value->menuType as $key => $value1) {
               
                    $menu .='<a href="'.$value1->menuUrl.'><h3>'.$value1->menuName.'</h3></a>';
                 
                }
            }
                $menu .='</li>';
                $menu .= '</ul>';
            }
          
        }
    
        return $menu;
    }


    public static function accountSubMenu()
    {
        $accountssub = '';
        $menu = Menu::all();
        foreach ($menu as $key => $value) {
           if($value->menuNname == 'Accounts')
           {
            $submenu = DB::table('menus')->where('parent_id', '=', $value->id)->where('menuType', '=', 'SUBMENU')->get();
                foreach ($submenu as $key => $value1) {
                    $accountssub .= '<span class="mr-2 mb-2 btn spanClass" style="margin-left: -14px;">
                                        <a href="'.$value1->menuUrl.'">
                                            <div class="element-box headeingColor " id="card1" >
                                                <h6>'.$value1->menuNname.'</h6>
                                            </div>
                                        </a>
                                    </span>  ';
                                    
                }
                        
           }
        }

       return $accountssub;

    }

    public static function clients()
    {
        $client ='';
        $arrayClients = array(
           'INDIVIDUAL'=>'Individuals',
           'COOPERATIVE'=>'Cooperatives',
           'LIMITED_COMPANY'=>'Limited Companies',
           'CLUBS_SOCIETIES_TRUSTS'=>'Clubs | Societies | Trusts'
        );
        $client .='<select name="" id="" class="form-control ">';  
        $client .='<option value="">Select Client</option>';  
        foreach ($arrayClients as $key => $value) {
          
            $client .='<option value="'.$key.'">'. $value.'</option>';
        }
        $client .='</select>';

        return $client;
    }
}

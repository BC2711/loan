<?php

namespace App\Helper;

use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

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
                                "sub" => "",
                            ],
                            [

                                "menuName" => "Limited Companies",
                                "url" => "companies",
                                "icon" => "",
                                "sub" => "",
                            ],
                            [

                                "menuName" => "Clubs | Societies | Trusts",
                                "url" => "",
                                "icon" => "",
                                "sub" => "",
                            ],
                            [

                                "menuName" => "Others",
                                "url" => "/others",
                                "icon" => "",
                                "sub" => "",
                            ]
                        ]
                    ],
                    [

                        "menuName" => "Account Requests",
                        "url" => "/requests",
                        "icon" => "",
                        "sub" => "",
                    ]
                ]
            ]
        );

        foreach ($menu as $key => $value) {
            if ($value['menuName'] == 'Home') {
                $array .= '<li class="nav-item dropdown">';
                $array .= '
                <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-chart-pie"></span>
                    '.$value['menuName'].'
                </a> ';
                $array .='<ul class="dropdown-menu navbar-dropdown-caret">';
                foreach ($value['sub'] as $key => $value1) {
                    $array .= '<li>
                                    <a class="dropdown-item active" href="  '.$value1['url'].'">
                                        <div class="dropdown-item-wrapper">
                                            <span class="me-2 uil" data-feather="shopping-cart"></span>
                                            '.$value1['menuName'].'
                                        </div>
                                    </a>
                                 </li>';
                }
                $array .= '</ul></li>';
            }
            if($value['menuName'] == 'Accounts')
            {
                $array .='  <li class="nav-item dropdown">';
                $array .=' <a class="nav-link dropdown-toggle lh-1" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                    <span class="uil fs-0 me-2 uil-cube"></span>
                    '.$value['menuName'].'
                </a>';
                $array .='<ul class="dropdown-menu navbar-dropdown-caret">';
                $array .='<li class="nav-item dropdown">';
                  foreach ($value['sub'] as $key => $value2) {
                    $array .='<li class="dropdown">';
                    $array .='
                   
                    <a class="dropdown-item dropdown-toggle" id="CRM" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">
                        <div class="dropdown-item-wrapper">
                            <span class="uil fs-0 uil-angle-right lh-1 dropdown-indicator-icon"></span>
                            <span>
                                <span class="me-2 uil" data-feather="phone"></span>
                                '.$value2['menuName'].'
                            </span>
                        </div>
                    </a>';
                    $array .='<ul class="dropdown-menu">';
                    if($value2['menuName'] == 'Client KYC')
                    {
                        foreach ($value2['sub']  as $key => $value3) {
                            $array .='
                        
                            <li>
                                <a class="dropdown-item" href="'.$value3['url'].'">
                                    <div class="dropdown-item-wrapper">
                                        <span class="me-2 uil"></span>
                                     '.$value3['menuName'].'
                                    </div>
                                </a>
                            </li>
                            ';
                        }
                       
                    }
                    $array .='</ul>';
                    $array .=' <li>
                    <a class="dropdown-item" href="apps/calendar.html">
                        <div class="dropdown-item-wrapper">
                            <span class="me-2 uil" data-feather="calendar"></span>
                            '.$value2['menuName'].'
                        </div>
                    </a>
                </li>';
                    $array .='</li>';
                    $array .='</ul>';
                    $array .='</li>';
                  
                  }
                 
            }
          
        }
        return $array;
    }
}

<!DOCTYPE html>
<html>
<head>
<title> PORTFOLIO</title>
<meta charset="utf-8">
    <meta content="ie=edge" http-equiv="x-ua-compatible">
    <meta content="template language" name="keywords">
    <meta content="Tamerlan Soziev" name="author">
    <meta content="Admin dashboard html template" name="description">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <link href="favicon.png" rel="shortcut icon">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet" type="text/css">
    
    <link href=/newcss/bower_components/select2/dist/css/select2.min.css" rel="stylesheet">
    <link href="/newcss/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="/newcss/bower_components/dropzone/dist/dropzone.css" rel="stylesheet">
    <link href="/newcss/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/newcss/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="/newcss/bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet">
    <link href="/newcss/bower_components/slick-carousel/slick/slick.css" rel="stylesheet">
    <link href="/newcss/css/main.css?version=4.5.0" rel="stylesheet">
     <link href="/newcss/custom.css" rel="stylesheet">
   
</head>
<style>
  h5{
    font-weight: bold !important;
    color: black  !important;
  }
</style>
<body class="menu-position-top full-screen">
    <div class="all-wrapper solid-bg-all">

      <div class="layout-w">
        <!---
        START - Mobile Menu
        --->
        <div class="menu-mobile menu-activated-on-click color-scheme-dark">
          <div class="mm-logo-buttons-w">
            <a class="mm-logo" href="home"><img src="/newcss/img/logo.png"><span>[[Brand]]</span></a>
            <div class="mm-buttons">
              <div class="content-panel-open">
                <div class="os-icon os-icon-grid-circles"></div>
              </div>
              <div class="mobile-menu-trigger">
                <div class="os-icon os-icon-hamburger-menu-1"></div>
              </div>
            </div>
          </div>
          <div class="menu-and-user">
            <div class="logged-user-w">
              <div class="avatar-w">
                <img alt="" src="/newcss/avatar1.png">
              </div>
              <div class="logged-user-info-w">
                <div class="logged-user-name">
                  <!--[[userFirstNameAdmin]]-->
                </div>
                <div class="logged-user-role">
                  <!--[[userTypeRoleName]]-->
                </div>
                   <ul>
              
                  <li>
                    <a href="changepassword"><i class="os-icon os-icon-user-male-circle2"></i><span>Change Password</span></a>
                  </li>

                  <li>
                    <a href="logout?logout=1"><i class="os-icon os-icon-signs-11"></i><span>Logout</span></a>
                  </li>
                </ul>
              </div>
            </div>
            <!---
            START - Mobile Menu List
            --->
            {{-- <ul class="main-menu">
              <?php echo \App\Helper\CommonFunction::navMenu(); ?>
            </ul> --}}
            <!---
            END - Mobile Menu List
            --->

          </div>
        </div>
        <!---
        END - Mobile Menu
        ---><!---
        START - Main Menu
        --->
        <div class="fixed-top menu-w color-scheme-dark color-style-bright menu-position-top menu-layout-compact sub-menu-style-over sub-menu-color-bright selected-menu-color-light menu-activated-on-hover menu-with-image menu-has-selected-link">
          <div class="logo-w">
            <a class="logo" href="home">
              <div class="logo-element"></div>
              <div class="logo-label text-light">
              <h5>PORTFOLIO</h5>
              </div>
            </a>
          </div>
          <div class="logged-user-w avatar-inline">
            <div class="logged-user-i">
              <div class="avatar-w">
                <img alt="" src="/newcss/avatar1.png">
              </div>
              <div class="logged-user-info-w">
                <div class="logged-user-name">
                  <!--[[userFirstNameAdmin]]-->
                </div>
                <div class="logged-user-role">
                  <!--[[userTypeRoleName]]-->
                </div>
              
              </div>
              <div class="logged-user-toggler-arrow">
                <div class="os-icon os-icon-chevron-down"></div>
              </div>
              <div class="logged-user-menu color-style-bright bgg">
                <div class="logged-user-avatar-info">
                  <div class="avatar-w">
                    <img alt="" src="/newcss/avatar1.png">
                  </div>
                  <div class="logged-user-info-w">
                    <div class="logged-user-name">
                      <!--[[userFirstNameAdmin]]-->
                    </div>
                    <div class="logged-user-role">
                      <!--[[userTypeRoleName]]-->
                    </div>
                  </div>
                </div>
                <div class="bg-icon">
                  <i class="os-icon os-icon-wallet-loaded"></i>
                </div>
                <ul>

                  <li>
                    <a href="changepassword"><i class="os-icon os-icon-user-male-circle2"></i><span>Change Password</span></a>
                  </li>

                  <li>
                    <a href="logout?logout=1"><i class="os-icon os-icon-signs-11"></i><span>Logout</span></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

        
          <ul class="main-menu">

            <?php echo \App\Helper\CommonFunction::mainmenu(); ?>

          </ul>

        </div>
      
        @yield('content')
      </div>
        
      <div class="display-type"></div>
    </div>


    
    
    <script src="/newcss/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="/newcss/bower_components/popper.js/dist/umd/popper.min.js"></script>
    <script src="/newcss/bower_components/moment/moment.js"></script>
    <script src="/newcss/bower_components/chart.js/dist/Chart.min.js"></script>
    <script src="/newcss/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="/newcss/bower_components/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script src="/newcss/bower_components/ckeditor/ckeditor.js"></script>
    <script src="/newcss/bower_components/bootstrap-validator/dist/validator.min.js"></script>
    <script src="/newcss/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="/newcss/bower_components/ion.rangeSlider/js/ion.rangeSlider.min.js"></script>
    <script src="/newcss/bower_components/dropzone/dist/dropzone.js"></script>
    <script src="/newcss/bower_components/editable-table/mindmup-editabletable.js"></script>
    <script src="/newcss/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/newcss/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="/newcss/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
    <script src="/newcss/bower_components/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
    <script src="/newcss/bower_components/tether/dist/js/tether.min.js"></script>
    <script src="/newcss/bower_components/slick-carousel/slick/slick.min.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/util.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/alert.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/button.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/carousel.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/collapse.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/dropdown.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/modal.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/tab.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/tooltip.js"></script>
    <script src="/newcss/bower_components/bootstrap/js/dist/popover.js"></script>
    <script src="/newcss/js/demo_customizer.js?version=4.5.0"></script>
    <script src="/newcss/js/main.js?version=4.5.0"></script>
 <script>
     
     function getServiceCos(cosId)
 {
        if(cosId)
        {
            if(cosId == 'new')
            {
            document.getElementById("createNewId").style.display='';
            document.getElementById("FormId").style.display='none';
            }
            else
            {
                window.location.href = 'cardholdercos?mode=get-cos-type&cosid='+cosId;
            }
        }
        else
        {
        alert("Please Select COS");
        document.getElementById("FormId").style.display='none';
        document.getElementById("createNewId").style.display='none';
        }
 }
 


function getServiceClientCos(cosId)
 {
        if(cosId)
        {
            
                window.location.href = 'clientcos?mode=get-cos-type&cosid='+cosId;
            
        }
        else
        {
        alert("Please Select COS");
        document.getElementById("FormId").style.display='none';
        document.getElementById("createNewId").style.display='none';
        }
 }
 
 
 
 //document.getElementById("city").readOnly = true;


 </script>
 
 
 <script>
function passwordsendLinks(_id)
        {
            
            let text = "Do you really want to send password recovery link ?";
            if (confirm(text) == true) 
            {
      
  
            var url= "ajax?mode=reset-password&id="+_id;
            $.ajax({url: url, success: function(result){
                    if(result == "NO")
                    {
                        
                    }else{
                location.reload();
                }
            }});
            }
        }
        
	
   
    
    $(function() {
    
    var input = ""; //holds current input as a string
    
    $("#amount").keydown(function(e) {     
        //handle backspace key
        if(e.keyCode == 8 && input.length > 0) {
            input = input.slice(0,input.length-1); //remove last digit
            $(this).val(formatNumber(input));
        }
        else {
            var key = getKeyValue(e.keyCode);
            if(key) {
                input += key; //add actual digit to the input string
                $(this).val(formatNumber(input)); //format input string and set the input box value to it
            }
        }
        return false;
    });
    
    function getKeyValue(keyCode) {
        if(keyCode > 57) { //also check for numpad keys
            keyCode -= 48;
        }
        if(keyCode >= 48 && keyCode <= 57) {
            return String.fromCharCode(keyCode);
        }
    }
    
    function formatNumber(input) {
        if(isNaN(parseFloat(input))) {
            return "0.00"; //if the input is invalid just set the value to 0.00
        }
        var num = parseFloat(input);
        
        const numberFormatter = Intl.NumberFormat('en-US');

        const amounttt  = (num / 100).toFixed(2); //move the decimal up to places return a X.00 format
        return numberFormatter.format(amounttt);
    }
    
    
    
});


     $("#mobile_number").keydown(function(e) { 
      
       var s = document.getElementById("mobile_number").value;
  
        while(s.charAt(0) === '0')
        {
         var s = s.substring(1);
         
         
        }
        document.getElementById("mobile_number").value=s;
    });
    
    $("#mobilenumber").keydown(function(e) { 
      
       var s = document.getElementById("mobilenumber").value;
  
        while(s.charAt(0) === '0')
        {
         var s = s.substring(1);
         
         
        }
        document.getElementById("mobilenumber").value=s;
    });
    
    $("#phone").keydown(function(e) { 
      
       var s = document.getElementById("phone").value;
  
        while(s.charAt(0) === '0')
        {
         var s = s.substring(1);
         
         
        }
        document.getElementById("phone").value=s;
    });
</script>

<script>
  setInterval(
    function() {
       
      $(".successMsg").hide(500);
      $(".ppError").hide(500);
    }, 4000);
</script>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {packages:["orgchart"]});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');

        // For each orgchart box, provide the name, manager, and tooltip to show.
        data.addRows([[OrgGraphArray]]);

        // Create the chart.
        var chart = new google.visualization.OrgChart(document.getElementById('treeViewChart'));
        // Draw the chart, setting the allowHtml option to true for the tooltips.
        chart.draw(data, {'allowHtml':true});
      }
   </script>
 
        
  </body>
</html>
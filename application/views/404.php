<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Business Linkage</title>
<link rel="shortcut icon" href="<?php echo base_url();?>images/head.png" type="image/x-icon"/>
<link rel="stylesheet" href="<?php echo base_url();?>css/style.css"  type="text/css" />


<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="ie8.css" tppabs="http://themepixels.com/themes/demo/webpage/starlight/css/ie8.css"/>
<![endif]-->

<!--[if IE 7]>
    <link rel="stylesheet" media="screen" href="ie7.css" tppabs="http://themepixels.com/themes/demo/webpage/starlight/css/ie7.css"/>
<![endif]-->
<script type="text/javascript" src="<?php echo base_url();?>/js/jquery-1.7.min.js" ></script>
<script type="text/javascript" src="<?php echo base_url();?>js/jquery-ui-1.8.16.custom.min.js" ></script>
<script type="text/javascript" src="<?php echo base_url();?>js/general.js" ></script>
<!--[if lt IE 9]>
	<script src="css3-mediaqueries.js" tppabs="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="loggedin errorpage">

	<!-- START OF HEADER -->
	<div class="header radius3">
    	<div class="headerinner">
        	
            <a href=""><img src="<?php echo base_url();?>images/starlight_admin_template_logo_small.png"  alt="" /></a>
            
              
            <div class="headright">
            	<div class="headercolumn">&nbsp;</div>
            	<div id="searchPanel" class="headercolumn">
                	<div class="searchbox">
                        <form action="" method="post">
                            <input type="text" id="keyword" name="keyword" class="radius2" value="Search here" /> 
                        </form>
                    </div><!--searchbox-->
                </div><!--headercolumn-->
            	<div id="notiPanel" class="headercolumn">
                    <div class="notiwrapper">
                        <a href="messages.php.htm" class="notialert radius2">5</a>
                        <div class="notibox">
                            <ul class="tabmenu">
                                <li class="current"><a href="messages.php.htm" class="msg">Messages (2)</a></li>
                                <li><a href="activities.php.htm" class="act">Recent Activity (3)</a></li>
                            </ul>
                            <br clear="all" />
                            <div class="loader"><img src="<?php echo base_url();?>images/loader3.gif"  alt="Loading Icon" /> Loading...</div>
                            <div class="noticontent"></div><!--noticontent-->
                        </div><!--notibox-->
                    </div><!--notiwrapper-->
                </div><!--headercolumn-->
                <div id="userPanel" class="headercolumn">
                    <a href="" class="userinfo radius2">
                        <img src="<?php echo base_url();?>images/avatar.png"  alt="" class="radius2" />
                        <span><strong>Justin Meller</strong></span>
                    </a>
                    <div class="userdrop">
                        <ul>
                            <li><a href="">Profile</a></li>
                            <li><a href="">Account Settings</a></li>
                            <li><a href="index.html" >Logout</a></li>
                        </ul>
                    </div><!--userdrop-->
                </div><!--headercolumn-->
            </div><!--headright-->
        
        </div><!--headerinner-->
	</div><!--header-->
    <!-- END OF HEADER -->
        
    <!-- START OF MAIN CONTENT -->
    <div class="mainwrapper">
     	<div class="mainwrapperinner">
         	
        <div class="errorWrapper">
        	<h1 class="pageErrorTitle">Error 404 - Page Not Found</h1>
            <span>You may have clicked an expired link or mistyped the address.</span>
            <br />
            <a class="default" href="javascript:history.back()">Back to Previous Page</a> &nbsp; <a class="default">Return to Dashboard</a>
        </div>
        
     	</div><!--mainwrapperinner-->
    </div><!--mainwrapper-->
	<!-- END OF MAIN CONTENT -->
    

</body>
</html>

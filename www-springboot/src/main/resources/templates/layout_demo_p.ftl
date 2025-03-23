<#import "/spring.ftl" as spring>
<#macro layout>
<!DOCTYPE html>
<html>
	<head>
		<title>循环授信再保理</title>
	    <meta charset="UTF-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	    <title>Brunette I Statistics Dashboard</title>
	    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />
	    <!-- Favicon -->
	    <link rel="shortcut icon" href="<@property key="prefix.resource"/>/themeforest/favicon.ico" />
	    <link rel="icon" type="image/x-icon" href="<@property key="prefix.resource"/>/themeforest/favicon.ico" />
		<!-- Morris Charts CSS -->
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/morris/morris.css" />
	    <!-- Toggles CSS -->
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/jquery-toggles/toggles.css" />
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/jquery-toggles/toggles-light.css" />
	    <!-- Custom CSS -->
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/dist/css/style.css" />
	<#list csslist as css>
		<link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>${css}" />
	</#list>
	</head>
	<body>
	    <!-- Preloader -->
	    <div class="preloader-it">
	        <div class="loader-pendulums"></div>
	    </div>
	    <!-- /Preloader -->
		
		<!-- HK Wrapper -->
		<div class="hk-wrapper hk-vertical-nav hk-icon-nav">
	
	        <!-- Top Navbar -->
	        <nav class="navbar navbar-expand-xl navbar-light fixed-top hk-navbar">
	            <a id="navbar_toggle_btn" class="navbar-toggle-btn nav-link-hover" href="javascript:void(0);"><span class="feather-icon"><i data-feather="menu"></i></span></a>
	            <a class="navbar-brand" href="dashboard1.html">
	                <img class="brand-img d-inline-block" src="<@property key="prefix.resource"/>/themeforest/img/logo-light.png" alt="brand" />
	            </a>
	            <ul class="navbar-nav hk-navbar-content">
	                <li class="nav-item">
	                    <a id="navbar_search_btn" class="nav-link nav-link-hover" href="javascript:void(0);"><span class="feather-icon"><i data-feather="search"></i></span></a>
	                </li>
	                <li class="nav-item">
	                    <a id="settings_toggle_btn" class="nav-link nav-link-hover" href="javascript:void(0);"><span class="feather-icon"><i data-feather="settings"></i></span></a>
	                </li>
	                <li class="nav-item dropdown dropdown-notifications">
	                    <a class="nav-link dropdown-toggle no-caret" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="feather-icon"><i data-feather="bell"></i></span><span class="badge-wrap"><span class="badge badge-brown badge-indicator badge-indicator-sm badge-pill pulse"></span></span></a>
	                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
	                        <h6 class="dropdown-header">Notifications <a href="javascript:void(0);" class="">View all</a></h6>
	                        <div class="notifications-nicescroll-bar">
	                            <a href="javascript:void(0);" class="dropdown-item">
	                                <div class="media">
	                                    <div class="media-img-wrap">
	                                        <div class="avatar avatar-sm">
	                                            <img src="<@property key="prefix.resource"/>/themeforest/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
	                                        </div>
	                                    </div>
	                                    <div class="media-body">
	                                        <div>
	                                            <div class="notifications-text"><span class="text-dark text-capitalize">Evie Ono</span> accepted your invitation to join the team</div>
	                                            <div class="notifications-time">12m</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </a>
	                            <div class="dropdown-divider"></div>
	                            <a href="javascript:void(0);" class="dropdown-item">
	                                <div class="media">
	                                    <div class="media-img-wrap">
	                                        <div class="avatar avatar-sm">
	                                            <img src="<@property key="prefix.resource"/>/themeforest/img/avatar2.jpg" alt="user" class="avatar-img rounded-circle">
	                                        </div>
	                                    </div>
	                                    <div class="media-body">
	                                        <div>
	                                            <div class="notifications-text">New message received from <span class="text-dark text-capitalize">Misuko Heid</span></div>
	                                            <div class="notifications-time">1h</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </a>
	                            <div class="dropdown-divider"></div>
	                            <a href="javascript:void(0);" class="dropdown-item">
	                                <div class="media">
	                                    <div class="media-img-wrap">
	                                        <div class="avatar avatar-sm">
	                                            <span class="avatar-text avatar-text-primary rounded-circle">
														<span class="initial-wrap"><span><i class="zmdi zmdi-account font-18"></i></span></span>
	                                            </span>
	                                        </div>
	                                    </div>
	                                    <div class="media-body">
	                                        <div>
	                                            <div class="notifications-text">You have a follow up with<span class="text-dark text-capitalize"> Brunette head</span> on <span class="text-dark text-capitalize">friday, dec 19</span> at <span class="text-dark">10.00 am</span></div>
	                                            <div class="notifications-time">2d</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </a>
	                            <div class="dropdown-divider"></div>
	                            <a href="javascript:void(0);" class="dropdown-item">
	                                <div class="media">
	                                    <div class="media-img-wrap">
	                                        <div class="avatar avatar-sm">
	                                            <span class="avatar-text avatar-text-success rounded-circle">
														<span class="initial-wrap"><span>A</span></span>
	                                            </span>
	                                        </div>
	                                    </div>
	                                    <div class="media-body">
	                                        <div>
	                                            <div class="notifications-text">Application of <span class="text-dark text-capitalize">Sarah Williams</span> is waiting for your approval</div>
	                                            <div class="notifications-time">1w</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </a>
	                            <div class="dropdown-divider"></div>
	                            <a href="javascript:void(0);" class="dropdown-item">
	                                <div class="media">
	                                    <div class="media-img-wrap">
	                                        <div class="avatar avatar-sm">
	                                            <span class="avatar-text avatar-text-warning rounded-circle">
														<span class="initial-wrap"><span><i class="zmdi zmdi-notifications font-18"></i></span></span>
	                                            </span>
	                                        </div>
	                                    </div>
	                                    <div class="media-body">
	                                        <div>
	                                            <div class="notifications-text">Last 2 days left for the project</div>
	                                            <div class="notifications-time">15d</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </a>
	                        </div>
	                    </div>
	                </li>
	                <li class="nav-item dropdown dropdown-authentication">
	                    <a class="nav-link dropdown-toggle no-caret" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        <div class="media">
	                            <div class="media-img-wrap">
	                                <div class="avatar">
	                                    <img src="<@property key="prefix.resource"/>/themeforest/img/avatar12.jpg" alt="user" class="avatar-img rounded-circle">
	                                </div>
	                                <span class="badge badge-success badge-indicator"></span>
	                            </div>
	                            <div class="media-body">
	                                <span>Madelyn Shane<i class="zmdi zmdi-chevron-down"></i></span>
	                            </div>
	                        </div>
	                    </a>
	                    <div class="dropdown-menu dropdown-menu-right" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
	                        <a class="dropdown-item" href="profile.html"><i class="dropdown-icon zmdi zmdi-account"></i><span>Profile</span></a>
	                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-card"></i><span>My balance</span></a>
	                        <a class="dropdown-item" href="inbox.html"><i class="dropdown-icon zmdi zmdi-email"></i><span>Inbox</span></a>
	                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-settings"></i><span>Settings</span></a>
	                        <div class="dropdown-divider"></div>
	                        <div class="sub-dropdown-menu show-on-hover">
	                            <a href="#" class="dropdown-toggle dropdown-item no-caret"><i class="zmdi zmdi-check text-success"></i>Online</a>
	                            <div class="dropdown-menu open-left-side">
	                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-check text-success"></i><span>Online</span></a>
	                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-circle-o text-warning"></i><span>Busy</span></a>
	                                <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-minus-circle-outline text-danger"></i><span>Offline</span></a>
	                            </div>
	                        </div>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#"><i class="dropdown-icon zmdi zmdi-power"></i><span>Log out</span></a>
	                    </div>
	                </li>
	            </ul>
	        </nav>
	        <form role="search" class="navbar-search">
	            <div class="position-relative">
	                <a href="javascript:void(0);" class="navbar-search-icon"><span class="feather-icon"><i data-feather="search"></i></span></a>
	                <input type="text" name="example-input1-group2" class="form-control" placeholder="Type here to Search">
	                <a id="navbar_search_close" class="navbar-search-close" href="#"><span class="feather-icon"><i data-feather="x"></i></span></a>
	            </div>
	        </form>
	        <!-- /Top Navbar -->
	
	        <!-- Vertical Nav -->
	        <nav class="hk-nav hk-nav-dark">
	            <a href="javascript:void(0);" id="hk_nav_close" class="hk-nav-close"><span class="feather-icon"><i data-feather="x"></i></span></a>
	            <div class="nicescroll-bar">
	                <div class="navbar-nav-wrap">
	                    <ul class="navbar-nav flex-column">
	                        <li class="nav-item active">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#dash_drp">
	                                <span class="feather-icon"><i data-feather="activity"></i></span>
	                                <span class="nav-link-text">Dashboard</span>
	                            </a>
	                            <ul id="dash_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="dashboard1.html">CRM</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="dashboard2.html">Project</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="dashboard3.html">Statistics</a>
	                                        </li>
											<li class="nav-item">
	                                            <a class="nav-link" href="dashboard4.html">Classic</a>
	                                        </li>
											<li class="nav-item active">
	                                            <a class="nav-link" href="dashboard5.html">Analytics</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link link-with-badge" href="javascript:void(0);" data-toggle="collapse" data-target="#app_drp">
	                                <span class="feather-icon"><i data-feather="package"></i></span>
	                                <span class="nav-link-text">Application</span>
	                                <span class="badge badge-brown badge-pill">4</span>
	                            </a>
	                            <ul id="app_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="chats.html">Chat</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="calendar.html">Calendar</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="email.html">Email</a>
	                                        </li>
											<li class="nav-item">
	                                            <a class="nav-link" href="file-manager.html">File Manager</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#auth_drp">
	                                <span class="feather-icon"><i data-feather="zap"></i></span>
	                                <span class="nav-link-text">Authentication</span>
	                            </a>
	                            <ul id="auth_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#signup_drp">
														Sign Up
													</a>
	                                            <ul id="signup_drp" class="nav flex-column collapse collapse-level-2">
	                                                <li class="nav-item">
	                                                    <ul class="nav flex-column">
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="signup.html">Cover</a>
	                                                        </li>
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="signup-simple.html">Simple</a>
	                                                        </li>
	                                                    </ul>
	                                                </li>
	                                            </ul>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#signin_drp">
														Login
													</a>
	                                            <ul id="signin_drp" class="nav flex-column collapse collapse-level-2">
	                                                <li class="nav-item">
	                                                    <ul class="nav flex-column">
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="login.html">Cover</a>
	                                                        </li>
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="login-simple.html">Simple</a>
	                                                        </li>
	                                                    </ul>
	                                                </li>
	                                            </ul>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#recover_drp">
														Recover Password
													</a>
	                                            <ul id="recover_drp" class="nav flex-column collapse collapse-level-2">
	                                                <li class="nav-item">
	                                                    <ul class="nav flex-column">
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="forgot-password.html">Forgot Password</a>
	                                                        </li>
	                                                        <li class="nav-item">
	                                                            <a class="nav-link" href="reset-password.html">Reset Password</a>
	                                                        </li>
	                                                    </ul>
	                                                </li>
	                                            </ul>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="lock-screen.html">Lock Screen</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="404.html">Error 404</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="maintenance.html">Maintenance</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#pages_drp">
	                                <span class="feather-icon"><i data-feather="file-text"></i></span>
	                                <span class="nav-link-text">Pages</span>
	                            </a>
	                            <ul id="pages_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="profile.html">Profile</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="invoice.html">Invoice</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="gallery.html">Gallery</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="activity.html">Activity</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="faq.html">Faq</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                    </ul>
	                    <hr class="nav-separator">
	                    <div class="nav-header">
	                        <span>User Interface</span>
	                        <span>UI</span>
	                    </div>
	                    <ul class="navbar-nav flex-column">
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#Components_drp">
	                                <span class="feather-icon"><i data-feather="layout"></i></span>
	                                <span class="nav-link-text">Components</span>
	                            </a>
	                            <ul id="Components_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="alerts.html">Alerts</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="avatar.html">Avatar</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="badge.html">Badge</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="buttons.html">Buttons</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="cards.html">Cards</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="carousel.html">Carousel</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="collapse.html">Collapse</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="dropdowns.html">Dropdown</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="list-group.html">List Group</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="modal.html">Modal</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="nav.html">Nav</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="navbar.html">Navbar</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="nestable.html">Nestable</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="pagination.html">Pagination</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="popovers.html">Popovers</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="progress.html">Progress</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="tooltip.html">Tooltip</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#content_drp">
	                                <span class="feather-icon"><i data-feather="type"></i></span>
	                                <span class="nav-link-text">Content</span>
	                            </a>
	                            <ul id="content_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="typography.html">Typography</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="images.html">Images</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="media-object.html">Media Object</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#utilities_drp">
	                                <span class="feather-icon"><i data-feather="anchor"></i></span>
	                                <span class="nav-link-text">Utilities</span>
	                            </a>
	                            <ul id="utilities_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="background.html">Background</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="border.html">Border</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="colors.html">Colors</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="embeds.html">Embeds</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="icons.html">Icons</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="shadow.html">Shadow</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="sizing.html">Sizing</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="spacing.html">Spacing</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#forms_drp">
	                                <span class="feather-icon"><i data-feather="server"></i></span>
	                                <span class="nav-link-text">Forms</span>
	                            </a>
	                            <ul id="forms_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="form-element.html">Form Elements</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="input-groups.html">Input Groups</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="form-layout.html">Form Layout</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="form-mask.html">Form Mask</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="form-validation.html">Form Validation</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="form-wizard.html">Form Wizard</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="file-upload.html">File Upload</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="editor.html">Editor</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#tables_drp">
	                                <span class="feather-icon"><i data-feather="list"></i></span>
	                                <span class="nav-link-text">Tables</span>
	                            </a>
	                            <ul id="tables_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="basic-table.html">Basic Table</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="data-table.html">Data Table</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="responsive-table.html">Responsive Table</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="editable-table.html">Editable Table</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#charts_drp">
	                                <span class="feather-icon"><i data-feather="pie-chart"></i></span>
	                                <span class="nav-link-text">Charts</span>
	                            </a>
	                            <ul id="charts_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="line-charts.html">Line Chart</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="area-charts.html">Area Chart</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="bar-charts.html">Bar Chart</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="pie-charts.html">Pie Chart</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="realtime-charts.html">Realtime Chart</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="mini-charts.html">Mini Chart</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="javascript:void(0);" data-toggle="collapse" data-target="#maps_drp">
	                                <span class="feather-icon"><i data-feather="map"></i></span>
	                                <span class="nav-link-text">Maps</span>
	                            </a>
	                            <ul id="maps_drp" class="nav flex-column collapse collapse-level-1">
	                                <li class="nav-item">
	                                    <ul class="nav flex-column">
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="google-map.html">Google Map</a>
	                                        </li>
	                                        <li class="nav-item">
	                                            <a class="nav-link" href="vector-map.html">Vector Map</a>
	                                        </li>
	                                    </ul>
	                                </li>
	                            </ul>
	                        </li>
	                    </ul>
	                    <hr class="nav-separator">
	                    <div class="nav-header">
	                        <span>Getting Started</span>
	                        <span>GS</span>
	                    </div>
	                    <ul class="navbar-nav flex-column">
	                        <li class="nav-item">
	                            <a class="nav-link" href="documentation.html" >
	                                <span class="feather-icon"><i data-feather="book"></i></span>
	                                <span class="nav-link-text">Documentation</span>
	                            </a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link link-with-badge" href="#">
	                                <span class="feather-icon"><i data-feather="eye"></i></span>
	                                <span class="nav-link-text">Changelog</span>
	                                <span class="badge badge-sm badge-success badge-pill">v 1.0</span>
	                            </a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="#">
	                                <span class="feather-icon"><i data-feather="headphones"></i></span>
	                                <span class="nav-link-text">Support</span>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	        </nav>
	        <div id="hk_nav_backdrop" class="hk-nav-backdrop"></div>
	        <!-- /Vertical Nav -->
			
	        <!-- Setting Panel -->
	        <div class="hk-settings-panel">
	            <div class="nicescroll-bar position-relative">
	                <div class="settings-panel-wrap">
	                    <div class="settings-panel-head">
	                        <img class="brand-img d-inline-block align-top" src="<@property key="prefix.resource"/>/themeforest/img/logo-light.png" alt="brand" />
	                        <a href="javascript:void(0);" id="settings_panel_close" class="settings-panel-close"><span class="feather-icon"><i data-feather="x"></i></span></a>
	                    </div>
	                    <hr>
	                    <h6 class="mb-5">Layout</h6>
	                    <p class="font-14">Choose your preferred layout</p>
	                    <div class="layout-img-wrap">
	                        <div class="row">
	                            <a href="dashboard1.html" class="col-6 mb-30">
	                                <img class="rounded opacity-70" src="<@property key="prefix.resource"/>/themeforest/img/layout1.png" alt="layout">
	                                <i class="zmdi zmdi-check"></i>
	                            </a>
	                            <a href="dashboard2.html" class="col-6 mb-30">
	                                <img class="rounded opacity-70" src="<@property key="prefix.resource"/>/themeforest/img/layout2.png" alt="layout">
	                                <i class="zmdi zmdi-check"></i>
	                            </a>
	                           <a href="dashboard3.html" class="col-6 mb-30">
	                                <img class="rounded opacity-70" src="<@property key="prefix.resource"/>/themeforest/img/layout3.png" alt="layout">
	                                <i class="zmdi zmdi-check"></i>
	                            </a>
								<a href="javascript:void(0);" class="col-6 mb-30">
	                                <img class="rounded opacity-70" src="<@property key="prefix.resource"/>/themeforest/img/layout4.png" alt="layout">
	                                <i class="zmdi zmdi-check"></i>
	                            </a>
								<a href="dashboard5.html" class="col-6 active">
	                                <img class="rounded opacity-70" src="<@property key="prefix.resource"/>/themeforest/img/layout5.png" alt="layout">
	                                <i class="zmdi zmdi-check"></i>
	                            </a>
	                        </div>
	                    </div>
	                    <hr>
	                    <h6 class="mb-5">Navigation</h6>
	                    <p class="font-14">Menu comes in two modes: dark & light</p>
	                    <div class="button-list hk-nav-select mb-10">
	                        <button type="button" id="nav_light_select" class="btn btn-outline-light btn-sm btn-wth-icon icon-wthot-bg"><span class="icon-label"><i class="fa fa-sun-o"></i> </span><span class="btn-text">Light Mode</span></button>
	                        <button type="button" id="nav_dark_select" class="btn btn-outline-primary btn-sm btn-wth-icon icon-wthot-bg"><span class="icon-label"><i class="fa fa-moon-o"></i> </span><span class="btn-text">Dark Mode</span></button>
	                    </div>
	                    <hr>
	                    <h6 class="mb-5">Top Nav</h6>
	                    <p class="font-14">Choose your liked color mode</p>
	                    <div class="button-list hk-navbar-select mb-10">
	                        <button type="button" id="navtop_light_select" class="btn btn-outline-primary btn-sm btn-wth-icon icon-wthot-bg"><span class="icon-label"><i class="fa fa-sun-o"></i> </span><span class="btn-text">Light Mode</span></button>
	                        <button type="button" id="navtop_dark_select" class="btn btn-outline-light btn-sm btn-wth-icon icon-wthot-bg"><span class="icon-label"><i class="fa fa-moon-o"></i> </span><span class="btn-text">Dark Mode</span></button>
	                    </div>
	                    <hr>
	                    <div class="d-flex justify-content-between align-items-center">
	                        <h6>Scrollable Header</h6>
	                        <div class="toggle toggle-sm toggle-simple toggle-light toggle-bg-primary scroll-nav-switch"></div>
	                    </div>
	                    <button id="reset_settings" class="btn btn-primary btn-block btn-reset mt-30">Reset</button>
	                </div>
	            </div>
	            <img class="d-none" src="<@property key="prefix.resource"/>/themeforest/img/logo-light.png" alt="brand" />
	            <img class="d-none" src="<@property key="prefix.resource"/>/themeforest/img/logo-dark.png" alt="brand" />
	        </div>
	        <!-- /Setting Panel -->
	
	        <!-- Main Content -->
	        <div class="hk-pg-wrapper">
				<!-- Container -->
	            <div class="container mt-xl-50 mt-sm-30 mt-15">
	                <!-- Title -->
	                <div class="hk-pg-header">
	                    <div>
							<h2 class="hk-pg-title font-weight-600 mb-10">Web Stats</h2>
							<p>Earnings from subscriptions that stared in the period 1 - 31 December 2018<i class="ion ion-md-help-circle-outline ml-5" data-toggle="tooltip" data-placement="top" title="Need help about earning stats"></i></p>
						</div>
						<div class="d-flex">
	                        <div class="btn-group btn-group-sm">
								<button type="button" class="btn btn-secondary">Split dropdown</button>
								<button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<div class="dropdown-menu dropdown-menu-right">
									<a class="dropdown-item" href="#">Action</a>
									<a class="dropdown-item" href="#">Another action</a>
									<a class="dropdown-item" href="#">Something else here</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Separated link</a>
								</div>
							</div>
	                    </div>
	                </div>
	                <!-- /Title -->
	
	                <!-- Row -->
	                <div class="row">
	                    <div class="col-xl-12">
							<div class="hk-row">
								<div class="col-lg-8">
									<div class="card-group hk-dash-type-2">
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-14 font-weight-500 text-dark">Bonus Rate</span>
												<div class="d-flex align-items-center justify-content-between">
													<div class="display-5 font-weight-400 text-dark">47.43%</div>
													<div class="font-13 font-weight-500">
														<span>-28.12%</span>
														<i class="ion ion-md-arrow-down text-danger ml-5"></i>
													</div>
												</div>
												<div class="mt-20">
													<div id="sparkline_1"></div>
												</div>
											</div>
										</div>
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-14 font-weight-500 text-dark">New Sessions</span>
												<div class="d-flex align-items-center justify-content-between">
													<div class="display-5 font-weight-400 text-dark">76.4%</div>
													<div class="font-13 font-weight-500">
														<span>2.12%</span>
														<i class="ion ion-md-arrow-up text-success ml-5"></i>
													</div>
												</div>
												<div class="mt-20">
													<div id="sparkline_2"></div>
												</div>
											</div>
										</div>
										<div class="card card-sm">
											<div class="card-body">
												<span class="d-block font-14 font-weight-500 text-dark">Time on Site</span>
												<div class="d-flex align-items-center justify-content-between">
													<div class="display-5 font-weight-400 text-dark">2m 15s</div>
													<div class="font-13 font-weight-500">
														<span>39.15%</span>
														<i class="ion ion-md-arrow-up text-success ml-5"></i>
													</div>
												</div>
												<div class="mt-20">
													<div id="sparkline_3"></div>
												</div>
											</div>
										</div>
									</div>
										
									<div class="hk-row">
										<div class="col-md-6">
											<div class="card">
												<div class="card-header card-header-action">
													<h6>Visits by device type</h6>
													<div class="d-flex align-items-center card-action-wrap">
														<div class="inline-block dropdown">
															<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
															<div class="dropdown-menu dropdown-menu-right">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item" href="#">Separated link</a>
															</div>
														</div>
													</div>
												</div>
												<div class="card-body">
													<div id="e_chart_6" class="echart" style="height:197px;"></div>
													<div class="hk-legend-wrap mt-10">
														<div class="hk-legend">
															<span class="d-10 bg-primary rounded-circle d-inline-block"></span><span>Desktop</span>
														</div>
														<div class="hk-legend">
															<span class="d-10 bg-brown-light-3 rounded-circle d-inline-block"></span><span>Mobile</span>
														</div>
														<div class="hk-legend">
															<span class="d-10 bg-brown-light-2 rounded-circle d-inline-block"></span><span>Tablet</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="card">
												<div class="card-header card-header-action">
													<h6>Total Sales</h6>
													<div class="d-flex align-items-center card-action-wrap">
														<div class="inline-block dropdown">
															<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
															<div class="dropdown-menu dropdown-menu-right">
																<a class="dropdown-item" href="#">Action</a>
																<a class="dropdown-item" href="#">Another action</a>
																<a class="dropdown-item" href="#">Something else here</a>
																<div class="dropdown-divider"></div>
																<a class="dropdown-item" href="#">Separated link</a>
															</div>
														</div>
													</div>
												</div>
												<div class="card-body">
													<div class="d-flex align-items-start justify-content-between mb-5">
														<div class="display-5 text-dark">$40,630.59</div>
														<div class="font-16 text-green font-weight-500">
															<i class="ion ion-md-arrow-up mr-5"></i>
															<span>5.12%</span>
														</div>
													</div>
													<div id="m_chart_3" class="" style="height:150px;"></div>
													<div class="hk-legend-wrap mt-10">
														<div class="hk-legend">
															<span class="d-10 bg-primary rounded-circle d-inline-block"></span><span>Today</span>
														</div>
														<div class="hk-legend">
															<span class="d-10 bg-brown-light-2 rounded-circle d-inline-block"></span><span>Yesterday</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="card">
										<div class="card-header card-header-action">
											<h6>Audience Area Pole</h6>
											<div class="d-flex align-items-center card-action-wrap">
												<div class="inline-block dropdown">
													<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
														<div class="dropdown-divider"></div>
														<a class="dropdown-item" href="#">Separated link</a>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body">
											<div id="e_chart_1" class="echart" style="height:190px;"></div>
											<div class="hk-legend-wrap mt-10">
												<div class="hk-legend">
													<span class="d-10 bg-primary rounded-circle d-inline-block"></span><span>A-1</span>
												</div>
												<div class="hk-legend">
													<span class="d-10 bg-brown-light-3 rounded-circle d-inline-block"></span><span>B-2</span>
												</div>
												<div class="hk-legend">
													<span class="d-10 bg-brown-light-4 rounded-circle d-inline-block"></span><span>C-3</span>
												</div>
												<div class="hk-legend">
													<span class="d-10 bg-brown-light-2 rounded-circle d-inline-block"></span><span>D-4</span>
												</div>
											</div>
										</div>
									</div>
									<div class="card card-sm border-bottom-0">
										<div class="card-header card-header-action">
											<h6>Device Stats</h6>
											<div class="d-flex align-items-center card-action-wrap">
												<div class="inline-block dropdown">
													<a class="dropdown-toggle no-caret" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="ion ion-ios-more"></i></a>
													<div class="dropdown-menu dropdown-menu-right">
														<a class="dropdown-item" href="#">Action</a>
														<a class="dropdown-item" href="#">Another action</a>
														<a class="dropdown-item" href="#">Something else here</a>
														<div class="dropdown-divider"></div>
														<a class="dropdown-item" href="#">Separated link</a>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body pa-0">
											<div class="pa-15">
												<div class="row">
													<div class="col-4">
														<span class="d-block text-capitalize">desktop</span>
														<span class="d-block text-dark font-weight-500 font-20">15%</span>
														<span class="d-block font-weight-600 font-13">201,434</span>
													</div>
													<div class="col-4">
														<span class="d-block text-capitalize">mobile</span>
														<span class="d-block text-dark font-weight-500 font-20">34.5%</span>
														<span class="d-block font-weight-600 font-13">101,434</span>
													</div>
													<div class="col-4">
														<span class="d-block text-capitalize">tablet</span>
														<span class="d-block text-dark font-weight-500 font-20">60.8%</span>
														<span class="d-block font-weight-600 font-13">101,434</span>
													</div>
												</div>
											</div>
											 <div class="progress-wrap">
												<div class="progress rounded-bottom-left rounded-bottom-right">
													<div class="progress-bar bg-primary w-15" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar bg-brown-light-2 w-35" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
													<div class="progress-bar bg-brown-light-3 w-50" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-body pa-0">
									<div class="table-wrap">
										<div class="table-responsive">
											<table class="table table-hover mb-0">
												<thead>
													<tr>
														<th></th>
														<th>Name</th>
														<th>Chart</th>
														<th>last Year</th>
														<th>6 months</th>
														<th>1 month</th>
														<th>Day</th>
														<th>Sale</th>
														<th>Buy</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><img class="circle" src="<@property key="prefix.resource"/>/themeforest/img/logo5.jpg" alt="icon"></td>
														<td>Fakebook</td>
														<td><span class="peity-line" data-width="90" data-peity='{ "fill": ["rgba(102,64,178,.05)"], "stroke":["#6640b2"]}' data-height="40">1,6,6,9,7,4,8,5,2,1</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 1,234</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 5,678</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 9,101</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 1,121</span> </td>
														<td>$3,141</td>
														<td>$5,161</td>
													</tr>
													<tr>
														<td><img class="circle" src="<@property key="prefix.resource"/>/themeforest/img/logo2.jpg" alt="icon"></td>
														<td>Microhard</td>
														<td><span class="peity-line" data-width="90" data-peity='{ "fill": ["rgba(102,64,178,.05)"], "stroke":["#6640b2"]}' data-height="40">1,6,6,9,9,9,8,5,2,1</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 7,181</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 9,202</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 1,222</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 3,242</span> </td>
														<td>$5,262</td>
														<td>$7,282</td>
													</tr>
													<tr>
														<td><img class="circle" src="<@property key="prefix.resource"/>/themeforest/img/logo3.jpg" alt="icon"></td>
														<td>Oesla Motors</td>
														<td><span class="peity-line" data-width="90" data-peity='{ "fill": ["rgba(102,64,178,.05"], "stroke":["#6640b2"]}' data-height="40">5,6,5,5,7,4,6,5,2,1</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 9,303</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 1,323</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 3,343</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 5,363</span> </td>
														<td>$7,383</td>
														<td>$9,404</td>
													</tr>
													<tr>
														<td><img class="circle" src="<@property key="prefix.resource"/>/themeforest/img/logo4.jpg" alt="icon"></td>
														<td>NVISION</td>
														<td><span class="peity-line" data-width="90" data-peity='{ "fill": ["rgba(50,65,72,.05"], "stroke":["#6640b2"]}' data-height="40">3,4,4,6,4,4,7,5,2,1</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 1,424</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 3,444</span> </td>
														<td><span class="text-success"><i class="ion ion-md-arrow-up" aria-hidden="true"></i> $ 5,464</span> </td>
														<td><span class="text-danger"><i class="ion ion-md-arrow-down" aria-hidden="true"></i> $ 7,484</span> </td>
														<td>$9,505</td>
														<td>$1,525</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>		
						</div>
	                </div>
	                <!-- /Row -->
				</div>
	            <!-- /Container -->
				<!-- Footer -->
	            <div class="hk-footer-wrap container">
	                <footer class="footer">
	                    <div class="row">
	                        <div class="col-md-6 col-sm-12">
	                            <p>Pampered by<a href="https://hencework.com/" class="text-dark" target="_blank">Hencework</a> © 2019</p>
	                        </div>
	                        <div class="col-md-6 col-sm-12">
	                            <p class="d-inline-block">Follow us</p>
	                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-facebook"></i></span></a>
	                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-twitter"></i></span></a>
	                            <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-google-plus"></i></span></a>
	                        </div>
	                    </div>
	                </footer>
	            </div>
	            <!-- /Footer -->
	        </div>
	        <!-- /Main Content -->
	    </div>
	    <input type="hidden" id="locale" value="<@locale/>"/>
		<input type="hidden" id="uri" value="<@attr key="uri_without_first" />"/>
		<input type="hidden" id="resourcePrefix" value="<@property key="prefix.resource"/>"/>
	    <!-- /HK Wrapper -->
	    <script src="<@property key="prefix.resource"/>/jquery-3.4.1.min.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="<@property key="prefix.resource"/>/themeforest/vendors/popper.min.js"></script>
		<script src="<@property key="prefix.resource"/>/themeforest/vendors/bootstrap/bootstrap.min.js"></script>
		<!-- Slimscroll JavaScript -->
		<script src="<@property key="prefix.resource"/>/themeforest/dist/js/jquery.slimscroll.js"></script>
		<!-- Fancy Dropdown JS -->
		<script src="<@property key="prefix.resource"/>/themeforest/dist/js/dropdown-bootstrap-extended.js"></script>
	    <!-- FeatherIcons JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/dist/js/feather.min.js"></script>
	    <!-- Toggles JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery-toggles/toggles.min.js"></script>
	    <script src="<@property key="prefix.resource"/>/themeforest/dist/js/toggle-data.js"></script>
		<!-- Counter Animation JavaScript -->
		<script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery.waypoints.min.js"></script>
		<script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery.counterup.min.js"></script>
		<!-- Easy pie chart JS -->
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery.easypiechart.min.js"></script>
		<!-- Sparkline JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery.sparkline.min.js"></script>
		<!-- Morris Charts JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/raphael.min.js"></script>
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/morris/morris.min.js"></script>
		<!-- EChartJS JavaScript -->
		<script src="<@property key="prefix.resource"/>/themeforest/vendors/echarts-en.min.js"></script>
		<!-- Peity JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/vendors/jquery.peity.min.js"></script>
	    <!-- Init JavaScript -->
	    <script src="<@property key="prefix.resource"/>/themeforest/dist/js/init.js"></script>
		<script src="<@property key="prefix.resource"/>/themeforest/dist/js/dashboard5-data.js"></script>
		<script src="<@property key="prefix.resource"/>/jquery.i18n.properties.min.js"></script>
		<script src="<@property key="prefix.resource"/>/core.js"></script>
	<#list jslist as js>
		<script src="<@property key="prefix.resource"/>${js}"></script>
	</#list>
	</body>
</html>
</#macro>
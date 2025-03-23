<#import "/spring.ftl" as spring>
<#macro layout>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	    <title>X网站</title>
	    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />
	    <!-- Favicon -->
	    <link rel="shortcut icon" href="<@property key="prefix.resource"/>/themeforest/favicon.ico" />
	    <link rel="icon" type="image/x-icon" href="<@property key="prefix.resource"/>/themeforest/favicon.ico" />
		<!-- Morris Charts CSS -->
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/morris/morris.css" />
	    <!-- Toggles CSS -->
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/jquery-toggles/toggles.css" />
	    <link rel="stylesheet" type="text/css" href="<@property key="prefix.resource"/>/themeforest/vendors/jquery-toggles/toggles-light.css" />
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
	        <!-- Main Content -->
	        <div class="hk-pg-wrapper">
	        	<#nested/>
	        </div>
	        <!-- /Main Content -->
	    </div>
	    <input type="hidden" id="locale" value="<@locale/>"/>
		<input type="hidden" id="uri" value="<@attr key="uri_without_first" />"/>
		<input type="hidden" id="resourcePrefix" value="<@property key="prefix.resource"/>"/>
	    <!-- /HK Wrapper -->
	    <script src="<@property key="prefix.resource"/>/jquery-3.4.1.min.js"></script>
		<script src="<@property key="prefix.resource"/>/jquery.i18n.properties.min.js"></script>
		<script src="<@property key="prefix.resource"/>/core.js"></script>
		<script src="<@property key="prefix.resource"/>/layout.js"></script>
	<#list jslist as js>
		<script src="<@property key="prefix.resource"/>${js}"></script>
	</#list>
	</body>
</html>
</#macro>
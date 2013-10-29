<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	{meta_tags}
	{link_tags}
	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<!-- BEGIN pluginCSS -->
	<link rel="stylesheet" href="{pluginCSS.path}">
	<!-- END pluginCSS -->
	<script src="{relative_path}/socket.io/socket.io.js"></script>
	<!-- BEGIN clientScripts -->
	<script src="{relative_path}/{clientScripts.script}"></script>
	<!-- END clientScripts -->
	<script type="text/javascript">
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			paths: {
				"forum": '../forum'
			}
		});
	</script>
	<link rel="stylesheet" type="text/css" href="{relative_path}/css/theme.css" />
</head>

<body>
	<input id="csrf_token" type="hidden" template-variable="csrf" value="{csrf}" />
	<div class="container" id="content">
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Atabix Cloud</title>
    <link rel="stylesheet" href="/static/css/mi.min.css" />

    <script src="/static/components/atabix-mi8/js/lib/modernizr.custom.js"></script>
    
    <style>
	    .loginbg {
		    overflow: hidden;
			background: url('/static/images/loginbg.jpg') no-repeat center center;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;		
		}
		
    </style>
    
</head>

    <body class="loginbg">
        <div class="row">
	        <div class="small-12 small-centered medium-6 large-4 columns">
		        <div class="loginBox animated bounceInDown">
			        <div class="image">
				        <img src="/static/images/default_employee.svg" />
			        </div>
			        
			        <h3>Vul je gegevens in</h3>
			        
		            <form method="post" id="mainform" action="/login/validate">
		                <input type="text" name="username" placeholder="Gebruikersnaam..." />
		                <input type="password" name="password" placeholder="Wachtwoord..." />
		                <a class="forgot" href="#">Wachtwoord vergeten?</a>
		                <input type="submit" class="button" id="loginButton" value="Inloggen" />
		            </form>
		        </div>
	        </div>
        </div>
        
        
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
        <script src="//atabix-cdn.s3.amazonaws.com/v1.0/foundation/foundation.min.js"></script>
        <script src="/static/js/mi.min.js"></script>
        
        <script type="text/javascript">
        $(function() {
            $('#mainform').ajaxForm({
                'dataType':'json',
                'success': function(json) {
                    if(json.status==1) {
                        window.location = json.redirect;
                    } else {
                        swal({
                             title: json.title
                            ,text: json.msg
                            ,type: 'warning'
                        });
                    }
                }
            });
            
        });
        </script>
        
    </body>
</html>

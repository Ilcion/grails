<html>
<head>
<meta name='layout' content='bootstrap' />
<title><g:message code="springSecurity.login.title" /></title>
</head>

<body>
	<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<div class="masthead clearfix">
					<div class="inner">
						<g:render template="/header" />
						<g:render template="/navigation" />
					</div>
				</div>

				<div class="inner cover">
					<form action='${postUrl}' method='POST' id='loginForm' class='form-signin'
						autocomplete='off'>
						<h2 class="form-signin-heading">
							<g:message code="springSecurity.login.header" />
						</h2>
		
						<g:if test='${flash.message}'>
							<div class="alert alert-danger" role="alert">
								${flash.message}
							</div>
						</g:if>
		
						<label for='username' class="sr-only"><g:message code="springSecurity.login.username.label" />:</label>
						<input type='text'	name='j_username' id='username' class="form-control" placeholder="Użytkownik" required autofocus /> 
						
						<label for='password' class="sr-only"><g:message code="springSecurity.login.password.label" />:</label> 
						<input type='password' name='j_password' id='password' class="form-control" placeholder="Hasło" required />
		
						<div class="checkbox pull-left">
							<label>
								<input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> /> 
								<g:message code="springSecurity.login.remember.me.label" />
							</label>
						</div>
						
						<button class="btn btn-lg btn-primary btn-block" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'>Zaloguj</button>
					</form>
				</div>

				<g:render template="/footer" />
			</div>

		</div>

	</div>
	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>

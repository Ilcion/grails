<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="main">
</head>
<body>
	<h2>//TODO image here</h2>
	<h3>
		${question }
	</h3>
	<br />
	valid answers:
	<g:each in="${validAnswers}">
	<br />
		${it.key }, ${it.value }
		
	</g:each>
	
	<br />
	user answers:
	<g:each in="${userAnswers }">
	<br />
	${it }
	</g:each>
	
</body>
</html>

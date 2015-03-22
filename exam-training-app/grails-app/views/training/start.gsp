<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="main">
</head>
<body>
	<h1>//TODO image here</h1>
	<h2>
		${question.content }
	</h2>
	<g:form action="summary">
		<g:hiddenField name="question" value="${question.id}" />
		<g:each in="${question.answers }">
			<br />
			id: ${it.id },
			content: ${it.content },
			valid: ${it.isValid }
			<g:checkBox name="userAnswers" value="${it.id}" checked="false" />

		</g:each>
		<br />
		<g:submitButton name="Check it!" />
	</g:form>
</body>
</html>

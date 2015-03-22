<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="main">
</head>
<body>
	<h2>//TODO image here</h2>
	<h3>
		${question.content }
	</h3>
	<g:form action="summary">
		<g:hiddenField name="question" value="${question.id}" />
		<g:each in="${question.answers }">
			<br />
			${it.id}, ${it.content}, ${it.isValid}
			<g:checkBox name="userAnswers" value="${it.id}" checked="false" />

		</g:each>
		<br />
		<g:submitButton name="Check it!" />
	</g:form>
</body>
</html>

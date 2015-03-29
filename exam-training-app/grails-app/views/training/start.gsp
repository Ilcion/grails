<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="main">
</head>
<body>
	<h2>
		${question.content }
	</h2>
	<g:if test="${question.image}">
		<img class="imageQuestion"
			src="${createLink(controller:'question', action:'image', id:question.id)}" />
	</g:if>
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

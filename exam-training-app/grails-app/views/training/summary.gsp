<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="main">
</head>
<body>
	<h2>//TODO image here</h2>
	<h2>
		${question }
	</h2>
	<g:if test="${question.image}">
		<img class="imageQuestion"
			src="${createLink(controller:'question', action:'image', id:question.id)}" />
	</g:if>
	<p>Legend:</p>
	<div style="width: 120px; height: 21px; background-color: lightgreen">
		<p>Valid answer</p>
	</div>
	<div style="width: 120px; height: 21px; background-color: #FAFCA7">
		<p>Missing answer</p>
	</div>
	<div style="width: 120px; height: 21px; background-color: #FF8989">
		<p>Invalid answer</p>
	</div>
	<br />
	<h3>Summary:</h3>
	<g:each in="${question.answers}" status="i" var="answer">
		<div
			style="${(answer.isValid && answer.id.toString() in userAnswers) ? 'background-color:lightgreen':'' } 
			${(answer.isValid && !(answer.id.toString() in userAnswers)) ? 'background-color:#FAFCA7':''}
			${(!answer.isValid && (answer.id.toString() in userAnswers)) ? 'background-color:#FF8989':''}">
			id:
			${answer.id }, content:
			${answer.content }, valid:
			${
			answer.isValid
		}
			<g:checkBox name="${answer.content }" value="${answer.isValid }"
				checked="${answer.id.toString() in userAnswers}" disabled="true" />
			user answer:
			${answer.id.toString() in userAnswers}
		</div>
	</g:each>
	<br />
	<br />
	<hr />
	<div style="padding: 50px 0px 0px 0px; width: 300px;">
		<g:link action="start"
			style="padding:10px 40px;
	margin-top:50px
	background-color:white;
	border:2px solid grey;
	font-size:30px">Try next!</g:link>
	</div>
	<div style="padding: 50px 0px 0px 0px; width: 300px;">
		<g:link action="index"
			style="padding:10px 40px;
	margin-top:50px
	background-color:white;
	border:2px solid grey;
	font-size:30px">Finish training!</g:link>
	</div>
</body>
</html>

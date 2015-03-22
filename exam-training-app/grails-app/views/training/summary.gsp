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
	<br /> <h3>Summary:</h3>

	<g:each in="${question.answers}" status="i" var="answer">


		<%-- koloruje odpowiedzi po oryginalnych odpowiedzich
		<div
			style="background-color: ${answer.isValid ? 'lightgreen' : 'red'}" >
			--%>
		<%--
			
			koloruje odpowiedzi po oryginalnych odpowiedzich i udzielonych przez uzytkownika
			--%>
		<div
			style="${(answer.isValid && answer.id.toString() in userAnswers) ? 'background-color:lightgreen':'background-color:#FC6E6E' }; 
			${(answer.isValid && !(answer.id.toString() in userAnswers)) ? 'background-color:#F1FF66 !important':''}">

			<br />

			id: ${answer.id },
			content: ${answer.content },
			valid: ${answer.isValid }
			
			<g:checkBox name="${answer.content }" value="${answer.isValid }"
				checked="${answer.id.toString() in userAnswers}" disabled="true" />
				user answer: ${answer.id.toString() in userAnswers}
				
		</div>
		
	</g:each>
	<%--<br /> user answers:
	<g:each in="${userAnswers }">
		<br />
		${it }
	</g:each>

	--%><br /><br /><hr />

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

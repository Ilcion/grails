<!DOCTYPE html>
<html>
<head>
<title>Your question!</title>
<meta name="layout" content="bootstrap">
</head>
<body>
<div class="site-wrapper">

		<div class="site-wrapper-inner">

			<div class="cover-container">

				<%--<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">Podsumowanie</h3>
						<g:render template="/navigation" />
					</div>
				</div>
				
				--%><div class="inner cover">
					<g:if test="${question.image}">
						<img class="image img-responsive center-block"
							src="${createLink(controller:'question', action:'image', id:question.id)}" />
					</g:if>
					<h2>Podsumowanie:</h2>
					<h3 class="cover-heading text-left">
						${question.content }
					</h3>
						<ul class="list-unstyled list-group text-left">
							<g:each in="${question.answers}" status="i" var="answer">
								<li class="list-group-item question" style="${(answer.isValid && answer.id in userAnswers) ? 'background-color:rgb(37, 134, 37)':'' } 
									${(answer.isValid && !(answer.id in userAnswers)) ? 'background-color:#B0771E':''}
									${(!answer.isValid && (answer.id in userAnswers)) ? 'background-color:#8B2828':''}">
									 
									
									<g:checkBox name="${answer.content }" value="${answer.isValid }"	checked="${answer.id.toString() in userAnswers}" disabled="true" />
									${answer.content }<%--
									user answer:
									${answer.id.toString() in userAnswers}
								--%></li>
							</g:each>
						</ul>	
						<br />
						<g:link uri="/" class="btn btn-lg btn-danger">Zakończ</g:link>
						<g:link controller="training" action="start" class="btn btn-lg btn-success">Następne pytanie</g:link>

				<%--<g:render template="/footer" />
			--%></div>

		</div>

	</div>
</body>
</html>

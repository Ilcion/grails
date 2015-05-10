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
						<h3 class="masthead-brand">Nauka przepisów ruchu drogowego</h3>
						<g:render template="/navigation" />
					</div>
				</div>--%>
				
				<div class="inner cover">
					<g:if test="${question.image}">
						<img class="image img-responsive center-block"
							src="${createLink(controller:'question', action:'image', id:question.id)}" />
					</g:if>
					<h3 class="cover-heading text-left">
						${question.content }
					</h3>
					<g:form action="summary">
						<ul class="list-unstyled list-group text-left">
							<g:each in="${question.answers }">
								<li class="list-group-item question">	
									<g:checkBox name="userAnswers" value="${it.id}" checked="false" />
									${it.content }
								</li>
							</g:each>
						</ul>	
						<br />
						<g:submitButton name="Sprawdź!" class="btn btn-lg btn-primary"/>
					</g:form>
				</div>

				<%--<g:render template="/footer" />
			--%></div>

		</div>

	</div>
	
</body>
</html>

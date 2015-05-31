<%@ page import="exam.training.app.Answer"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'answer.label', default: 'Odpowiedzi')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
					<h1 class="cover-heading">Edytuj odpowiedź:</h1>
					<g:if test="${flash.message}">
						<div class="message" role="status">
							${flash.message}
						</div>
					</g:if>
					<g:hasErrors bean="${answerInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${answerInstance}" var="error">
								<li
									<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
										error="${error}" /></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
					<g:form class="form-horizontal" url="[resource:answerInstance, action:'update']"
						method="PUT">
						<g:hiddenField name="version" value="${answerInstance?.version}" />
							<g:render template="form" />
							<g:actionSubmit class="btn btn-primary" action="update"
								value="${message(code: 'default.button.update.label', default: 'Edytuj')}" />
					</g:form>
				</div>
			</div>

			<g:render template="/footer" />
		</div>

	</div>

	</div>
</body>
</html>

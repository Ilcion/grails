
<%@ page import="exam.training.app.Answer"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'answer.label', default: 'Odpowiedź')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
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
					
					<g:if test="${flash.message}">
						<div class="message" role="status">
							${flash.message}
						</div>
					</g:if>
					<g:form class="form-horizontal">
						<g:if test="${answerInstance?.question}">
							<h3>
								
								<g:link controller="question" action="show"	id="${answerInstance?.question?.id}">${answerInstance?.question?.encodeAsHTML()}</g:link>
							</h3>
						</g:if>
						
						<g:if test="${answerInstance?.content}">
							<div class="form-group">
								<label class="col-sm-2 control-label"><g:message code="answer.content.label" default="Odpowiedź:" /></label>
								<div class="col-sm-10 text-left" style="padding-top: 7px;">
									<g:fieldValue bean="${answerInstance}" field="content" />
								</div>
							</div>
						</g:if>
	
							<div class="form-group">
								<label class="col-sm-2 control-label"><g:message code="answer.isValid.label" default="Poprawność odpowiedzi:" /></label>
								<div class="col-sm-10 text-left" style="padding-top: 7px;">
									<g:formatBoolean boolean="${answerInstance?.isValid}" />
								</div>
							</div>
					</g:form>
					
					<g:form url="[resource:answerInstance, action:'delete']"
						method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary" action="edit"
								resource="${answerInstance}">
								<g:message code="default.button.edit.label" default="Edytuj" />
							</g:link>
							<g:actionSubmit class="btn btn-danger" action="delete"
								value="${message(code: 'default.button.delete.label', default: 'Usuń')}"
								onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Jesteś tego pewny?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>

			<g:render template="/footer" />
		</div>

	</div>

	</div>
</body>
</html>

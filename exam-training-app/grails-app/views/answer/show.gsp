
<%@ page import="exam.training.app.Answer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'answer.label', default: 'Odpowiedź')}" />
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
						<h1 class="cover-heading">Odpowiedź:</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<p>
				<g:if test="${answerInstance?.content}">
					<span id="content-label" class="property-label"><g:message code="answer.content.label" default="Odpowiedź:" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${answerInstance}" field="content"/></span>
				</p>	
				</g:if>
			
				<g:if test="${answerInstance?.isValid}">
			<p>
					<span id="isValid-label" class="property-label"><g:message code="answer.isValid.label" default="Poprawna" /></span>
					
						<span class="property-value" aria-labelledby="isValid-label"><g:formatBoolean boolean="${answerInstance?.isValid}" /></span>
				
			</p>	
				</g:if>
			
				<g:if test="${answerInstance?.question}">
			<p>
					<span id="question-label" class="property-label"><g:message code="answer.question.label" default="Pytanie:" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:link controller="question" action="show" id="${answerInstance?.question?.id}">${answerInstance?.question?.encodeAsHTML()}</g:link></span>
					
			</p>
				</g:if>
			<g:form url="[resource:answerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${answerInstance}"><g:message code="default.button.edit.label" default="Edytuj" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Usuń')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Jesteś tego pewny?')}');" />
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

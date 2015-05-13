
<%@ page import="exam.training.app.Answer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'answer.label', default: 'Answer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
						<h1 class="cover-heading">Lista pytań w bazie:</h1>
											
					
					<div id="list-question" class="content scaffold-list" role="main">
						
						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>
			<table class="text-left">
			<thead>
					<tr>
					
						<g:sortableColumn property="content" title="${message(code: 'answer.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="isValid" title="${message(code: 'answer.isValid.label', default: 'Is Valid')}" />
					
						<th><g:message code="answer.question.label" default="Question" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${answerInstanceList}" status="i" var="answerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${answerInstance.id}">${fieldValue(bean: answerInstance, field: "content")}</g:link></td>
					
						<td><g:formatBoolean boolean="${answerInstance.isValid}" /></td>
					
						<td>${fieldValue(bean: answerInstance, field: "question")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${answerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

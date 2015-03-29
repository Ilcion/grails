
<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Question')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-question" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-question" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list question">

			<g:if test="${questionInstance?.content}">
				<li class="fieldcontain"><span id="content-label"
					class="property-label"><g:message
							code="question.content.label" default="Content" /></span> <span
					class="property-value" aria-labelledby="content-label"><g:fieldValue
							bean="${questionInstance}" field="content" /></span></li>
			</g:if>

			<g:if test="${questionInstance?.image}">
				<li class="fieldcontain"><g:if test="${questionInstance.image}">
						<img class="image"
							src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
					</g:if></li>
			</g:if>

			<g:if test="${questionInstance?.imageType}">
				<li class="fieldcontain"><span id="imageType-label"
					class="property-label"><g:message
							code="question.imageType.label" default="Image Type" /></span> <span
					class="property-value" aria-labelledby="imageType-label"><g:fieldValue
							bean="${questionInstance}" field="imageType" /></span></li>
			</g:if>

			<g:if test="${questionInstance?.answers}">
				<li class="fieldcontain"><span id="answers-label"
					class="property-label"><g:message
							code="question.answers.label" default="Answers" /></span> <g:each
						in="${questionInstance.answers}" var="a">
						<span class="property-value" aria-labelledby="answers-label"><g:link
								controller="answer" action="show" id="${a.id}">
								${a?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

		</ol>
		<g:form url="[resource:questionInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${questionInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>

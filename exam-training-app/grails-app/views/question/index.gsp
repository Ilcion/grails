
<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Question')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-question" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-question" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="content"
						title="${message(code: 'question.content.label', default: 'Content')}" />

					<g:sortableColumn property="image"
						title="${message(code: 'question.image.label', default: 'Image')}" />

					<g:sortableColumn property="imageType"
						title="${message(code: 'question.imageType.label', default: 'Image Type')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${questionInstanceList}" status="i"
					var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${questionInstance.id}">
								${fieldValue(bean: questionInstance, field: "content")}
							</g:link></td>

						<td><g:if test="${questionInstance.image}">
								<img class="image"
									src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
							</g:if></td>

						<td>
							${fieldValue(bean: questionInstance, field: "imageType")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		
			<g:paginate total="${questionInstanceCount ?: 0}" />
		
	</div>
</body>
</html>

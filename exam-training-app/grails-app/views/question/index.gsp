<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Pytań')}" />
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
						<table class="text-left table">
							<thead>
								<tr>
									<g:sortableColumn property="image"
										title="${message(code: 'question.image.label', default: ' ')}" />
									<g:sortableColumn property="content"
										title="${message(code: 'question.content.label', default: 'Pytania')}" />
									<%--<g:sortableColumn property="action"
										title="${message(code: 'question.button.label', default: 'Akcje')}" />--%>
								</tr>
							</thead>
							<tbody>
								<g:each in="${questionInstanceList}" status="i"
									var="questionInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td><g:if test="${questionInstance.image}">
												<img class="image_small" alt="-"
													src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
											</g:if></td>
										<td><g:link action="show" id="${questionInstance.id}">
												${fieldValue(bean: questionInstance, field: "content")}
											</g:link></td>
										<%--<td><g:form
												url="[resource:questionInstance, action:'delete']"
												method="DELETE">

												<g:link class="btn btn-primary" action="edit"
													resource="${questionInstance}">
													<g:message code="default.button.edit.label"
														default="Edycja" />
												</g:link>
												<g:actionSubmit class="btn btn-danger" action="delete"
													value="${message(code: 'default.button.delete.label', default: 'Usuń')}"
													onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Jesteś pewny?')}');" />

											</g:form></td>--%>
									</tr>
								</g:each>
							</tbody>
						</table>

						<g:paginate total="${questionInstanceCount ?: 0}" />


						<fieldset class="buttons">
							<g:link class="btn btn-primary" action="create"
								resource="${questionInstance}">
								<g:message code="default.button.create.label" default="Create" />
							</g:link>
						</fieldset>

					</div>
				</div>

				<g:render template="/footer" />
			</div>

		</div>

	</div>

</body>
</html>

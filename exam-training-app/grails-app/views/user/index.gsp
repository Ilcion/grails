
<%@ page import="exam.training.app.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
						<h1 class="cover-heading">Lista użytkowników:</h1>
						
						
							
							<g:if test="${flash.message}">
								<div class="message" role="status">${flash.message}</div>
							</g:if>
							
							<g:link class="create btn btn-primary" action="create">Nowy</g:link>
							
							<table class="text-left">
								<thead>
									<tr>
										<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Użytkownik')}" />
									</tr>
								</thead>
								<tbody>
									<g:each in="${userInstanceList}" status="i" var="userInstance">
										<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
											<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
										</tr>
									</g:each>
								</tbody>
							</table>
							<div class="pagination">
								<g:paginate total="${userInstanceCount ?: 0}" />
							</div>
					</div>
	
					<g:render template="/footer" />
				</div>
	
			</div>
	
		</div>
		
	</body>
</html>

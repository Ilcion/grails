
<%@ page import="exam.training.app.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
						
						<div id="show-user" class="content scaffold-show" role="main">
							<h1><g:message code="default.show.label" args="[entityName]" /></h1>
							<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
							</g:if>
							<ol class="property-list user">
							
								<g:if test="${userInstance?.username}">
								<li class="fieldcontain">
									<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
									
										<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
									
								</li>
								</g:if>
							</ol>
							<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
								<fieldset class="buttons">
									<g:link class="btn btn-success" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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

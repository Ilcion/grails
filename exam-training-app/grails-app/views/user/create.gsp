<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
						
						<div id="create-user" class="content scaffold-create" role="main">
						
							<h1 class="cover-heading"><g:message code="default.create2.label" args="[entityName]" /></h1>
							
							<g:if test="${flash.message}">
								<div class="message" role="status">${flash.message}</div>
							</g:if>
							
							<g:hasErrors bean="${userInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${userInstance}" var="error">
									<li class="alert alert-danger" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
							</g:hasErrors>
							<g:form class="form-horizontal" url="[resource:userInstance, action:'save']"  >
									<g:render template="form"/>
									<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Dodaj')}" />
							</g:form>
						</div>
					</div>
	
					<g:render template="/footer" />
				</div>
	
			</div>
	
		</div>
	
	</body>
</html>

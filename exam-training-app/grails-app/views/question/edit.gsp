<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Pytanie')}" />
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
						<h1 class="cover-heading">Edytuj Pytanie</h1>
											
						<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
						</g:if>
						<g:hasErrors bean="${questionInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${questionInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form class="form-horizontal" url="[resource:questionInstance, action:'update']" method="PUT"  enctype="multipart/form-data">
							<g:hiddenField name="version" value="${questionInstance?.version}" />
							
								<g:render template="form"/>
							
							
								<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Zaktualizuj')}" />
								<g:actionSubmit class="btn" action="index" value="${message(code: 'default.button.back.label', default: 'Powrót')}" />
							
						</g:form>	
						</div>
					</div>
	
					<g:render template="/footer" />
				</div>
	
			</div>
	
		</div>
	
	</body>
</html>

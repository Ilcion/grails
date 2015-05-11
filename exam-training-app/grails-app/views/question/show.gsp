
<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Question')}" />
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
							<ol class="list-unstyled list-group text-left">
							
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
								
								<g:if test="${questionInstance?.content}">
									<li class="fieldcontain"><span id="content-label"
										class="property-label"><g:message
												code="question.content.label" default="Pytanie:" /></span> <span
										class="property-value" aria-labelledby="content-label"><g:fieldValue
												bean="${questionInstance}" field="content" /></span></li>
								</g:if>
					
								<g:if test="${questionInstance?.answers}">
									<li class="fieldcontain"><span id="answers-label"
										class="property-label"><g:message
												code="question.answers.label" default="Odpowiedzi:" /></span> 
										<g:each
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
									<g:link class="btn btn-primary" action="edit" resource="${questionInstance}">
										<g:message code="default.button.edit.label" default="Edit" />
									</g:link>
									<g:actionSubmit class="btn btn-danger" action="delete"
										value="${message(code: 'default.button.delete.label', default: 'Delete')}"
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						
					</div>
	
					<g:render template="/footer" />
				</div>
	
			</div>
	
		</div>
		



</body>
</html>

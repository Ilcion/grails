
<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'question.label', default: 'Pytanie')}" />
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
					
					<g:form class="form-horizontal">
						<g:if test="${questionInstance.image}">
							<div class="form-group">
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-10">
									<img class="img-responsive" src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" alt="Obrazek" />
								</div>
							</div>
						</g:if>
						
						<g:if test="${questionInstance?.imageType}">
								<div class="form-group">
									<label class="col-sm-2 control-label"><g:message code="question.imageType.label" default="Format obrazka:" /></label>
									<div class="col-sm-10 text-left" style="padding-top: 7px;"> 
										<g:fieldValue bean="${questionInstance}" field="imageType" class="form-control" />
									</div>	
								</div>
						</g:if>
						
						<g:if test="${questionInstance?.content}">
								<div class="form-group">
									<label class="col-sm-2 control-label"><g:message code="question.imageType.label" default="Pytanie:" /></label>
									<div class="col-sm-10 text-left" style="padding-top: 7px;"> 
										<g:fieldValue bean="${questionInstance}" field="content" />
									</div>	
								</div>
						</g:if>
						
						<g:if test="${questionInstance?.answers}">
							<div class="form-group">
								<label class="col-sm-2 control-label"><g:message code="question.answers.label" default="Odpowiedzi:" /></label>
								<div class="col-sm-10"> 
									<ul class="text-left list-unstyled list-group">
										<g:each in="${questionInstance?.answers?}" var="a">
											<li class="list-group-item question">
												<g:link controller="answer" action="show" id="${a.id}">
													${a?.encodeAsHTML()}
												</g:link>
											</li>
										</g:each>
									</ul>
								</div>	
							</div>
						</g:if>
					</g:form>
					
					<g:form url="[resource:questionInstance, action:'delete']" method="DELETE">
						
							<g:link class="btn btn-primary" action="edit"
								resource="${questionInstance}">
								<g:message code="default.button.edit.label" default="Edycja" />
							</g:link>
							<g:actionSubmit class="btn btn-danger" action="delete"
								value="${message(code: 'default.button.delete.label', default: 'Usuń')}"
								onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Jesteś pewny?')}');" />
						
					</g:form>
				</div>
				<g:render template="/footer" />
			</div>
		</div>
	</div>
</body>
</html>

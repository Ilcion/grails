
<%@ page import="exam.training.app.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'Użytkownika')}" />
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
						<h1>
							<g:message code="default.show2.label" args="[entityName]" />
						</h1>
						<g:if test="${flash.message}">
							<div class="message" role="status">
								${flash.message}
							</div>
						</g:if>
						
						<g:form class="form-horizontal">
							<g:if test="${userInstance?.username}">
									<div class="form-group">
										<label class="col-sm-2 control-label"><g:message code="question.imageType.label" default="Użytkownik:" /></label>
										<div class="col-sm-10 text-left" style="padding-top: 7px;"> 
											<g:fieldValue bean="${userInstance}" field="username" />
										</div>	
									</div>
							</g:if>
						</g:form>
				
						<g:form url="[resource:userInstance, action:'delete']"
							method="DELETE">
							<fieldset class="buttons">
								<g:link class="btn btn-success" action="edit"
									resource="${userInstance}">
									<g:message code="default.button.edit.label" default="Edit" />
								</g:link>
								<g:actionSubmit class="btn btn-danger" action="delete"
									value="${message(code: 'default.button.delete.label', default: 'Delete')}"
									onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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

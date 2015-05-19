<%@ page import="exam.training.app.Question"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName" value="${message(code: 'question.label', default: 'Pytania')}" />
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
						<table class="text-left table table-hover">
							<thead>
								<tr>
									<g:sortableColumn property="image"
										title="${message(code: 'question.image.label', default: ' ')}"	/>
									<g:sortableColumn property="content"
										title="${message(code: 'question.content.label', default: 'Pytania')}" />
								</tr>
							</thead>
							<tbody>
								<g:each in="${questionInstanceList}" status="i"
									var="questionInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
										<td><g:if test="${questionInstance.image}">
												<img class="image_small"
													src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
											</g:if>
										</td>
										<td><g:link action="show" id="${questionInstance.id}">
												${fieldValue(bean: questionInstance, field: "content")}
											</g:link>
										</td>
									</tr>
								</g:each>
							</tbody>
						</table>
						
							<g:paginate total="${questionInstanceCount ?: 0}" />
							
							
								<fieldset class="buttons">
									<g:link class="btn btn-primary" action="create" resource="${questionInstance}">
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

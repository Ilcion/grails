<%@ page import="exam.training.app.Question"%>
<head>
<meta name="layout" content="bootstrap">
</head>
<div>
	<g:if test="${questionInstance.image}">
		<img class="image" src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
	</g:if>
</div>
<div class="control-group"${hasErrors(bean: questionInstance, field: 'Obrazek', 'error')} ">
	<label for="image" class="control-label"> <g:message code="question.image.label" default="Obrazek" />
	</label>
	 <div class="controls"> 
	<input type="file" class="input-file" id="image" name="image" />
	</div>
</div>
<div class="control-group"
	${hasErrors(bean: questionInstance, field: 'Tresc pytania', 'error')}required">
	<label for="content"> <g:message code="question.content.label" default="Treść pytania:" /> <span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="30" rows="1" maxlength="1000"	required="" value="${questionInstance?.content}" />
</div>
<%-- image type is filled by system
<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'imageType', 'error')} ">
	<label for="imageType"> 
		<g:message code="question.imageType.label" default="Image Type" />
	</label>
	<g:textField name="imageType" value="${questionInstance?.imageType}" />
</div>
--%>
<div class="control-group"${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers"> <g:message code="question.answers.label" default="Odpowiedzi:" />
	</label>
	<ul class="one-to-many text-left">
		<g:each in="${questionInstance?.answers?}" var="a">
			<p>
				<g:link controller="answer" action="show" id="${a.id}">
					${a?.encodeAsHTML()}
				</g:link>
			</p>
		</g:each>
		<g:link controller="answer" action="create" class="btn btn-success" params="['question.id': questionInstance?.id]">
			${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Odpowiedz')])}
		</g:link>
	</ul>
</div>

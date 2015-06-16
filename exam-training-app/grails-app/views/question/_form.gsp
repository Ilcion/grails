<%@ page import="exam.training.app.Question"%>

<g:if test="${questionInstance.image}">
	<div class="form-group">
		<label for="image" class="col-sm-2 control-label">Aktualny
			obrazek:</label>
		<div class="col-sm-10">
			<img class="img-responsive"
				src="${createLink(controller:'question', action:'image', id:questionInstance.id)}"
				alt="Obrazek" />
		</div>
	</div>
</g:if>
<div
	class="form-group ${hasErrors(bean: questionInstance, field: 'Obrazek', 'error')}">
	<label for="image" class="col-sm-2 control-label"><g:message
			code="question.image.label" default="Obrazek" /></label>
	<div class="col-sm-10">
		<input type="file" class="form-control" style="padding: 0px;"
			id="image" name="image" />
		<p class="help-block text-left">UWAGA: Aby skasować aktualny
			obrazek wystarczy pole "Obrazek" pozostawiń puste! Maksymalna
			wielkość: 2MB</p>
	</div>
</div>
<div
	class="form-group ${hasErrors(bean: questionInstance, field: 'Tresc pytania', 'error')} required">
	<label for="content" class="col-sm-2 control-label"> <g:message
			code="question.content.label" default="Treść pytania:" /><span
		class="required-indicator">*</span></label>
	<div class="col-sm-10">
		<g:textArea class="form-control" name="content" required=""
			value="${questionInstance?.content}" />
	</div>
</div>
<%-- image type is filled by system
<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'imageType', 'error')} ">
	<label for="imageType"> 
		<g:message code="question.imageType.label" default="Image Type" />
	</label>
	<g:textField name="imageType" value="${questionInstance?.imageType}" />
</div>--%>
<div
	class="form-group ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label class="col-sm-2 control-label"><g:message
			code="question.answers.label" default="Odpowiedzi:" /></label>
	<div class="col-sm-10">
		<ul class="text-left list-unstyled list-group">
			<g:each in="${questionInstance?.answers?}" var="a">
				<li class="list-group-item question"><g:link
						controller="answer" action="show" id="${a.id}">
						${a?.encodeAsHTML()}
					</g:link></li>
			</g:each>
			<li>
				<g:link controller="answer" action="create" class="btn btn-success pull-left" params="['question.id': questionInstance?.id]">
						${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Odpowiedz')])}
				</g:link>
			</li>
		</ul>
	</div>
</div>

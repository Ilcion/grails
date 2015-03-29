<%@ page import="exam.training.app.Question"%>



<div
	class="fieldcontain ${hasErrors(bean: questionInstance, field: 'content', 'error')} required">
	<label for="content"> <g:message code="question.content.label"
			default="Content" /> <span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="1000"
		required="" value="${questionInstance?.content}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: questionInstance, field: 'image', 'error')} ">

	<g:if test="${questionInstance.image}">
		  <img class="imageQuestion" src="${createLink(controller:'question', action:'image', id:questionInstance.id)}" />
	</g:if>

	<label for="image"> <g:message code="question.image.label"
			default="Image" />

	</label> <input type="file" id="image" name="image" />

	<div style="font-size: 0.8em; margin: 1.0em;">For best results,
		your image should have a width-to-height ratio of 4:5. For example, if
		your image is 80 pixels wide, it should be 100 pixels high.</div>
</div>

<%--<div
	class="fieldcontain ${hasErrors(bean: questionInstance, field: 'imageType', 'error')} ">
	<label for="imageType"> <g:message
			code="question.imageType.label" default="Image Type" />

	</label>
	<g:textField name="imageType" value="${questionInstance?.imageType}" />

</div>



--%><div
	class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers"> <g:message code="question.answers.label"
			default="Answers" />

	</label>

	<ul class="one-to-many">
		<g:each in="${questionInstance?.answers?}" var="a">
			<li><g:link controller="answer" action="show" id="${a.id}">
					${a?.encodeAsHTML()}
				</g:link></li>
		</g:each>
		<li class="add"><g:link controller="answer" action="create"
				params="['question.id': questionInstance?.id]">
				${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}
			</g:link></li>
	</ul>


</div>


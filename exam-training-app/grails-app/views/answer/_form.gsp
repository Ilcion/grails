<%@ page import="exam.training.app.Answer" %>



<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'Zawartość', 'error')} required">
	<label for="content">
		<g:message code="answer.content.label" default="Zawartość" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="500" required="" value="${answerInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'Poprawna', 'error')} ">
	<label for="isValid">
		<g:message code="answer.isValid.label" default="Poprawna" />
		
	</label>
	<g:checkBox name="isValid" value="${answerInstance?.isValid}" />

</div>

<div class="fieldcontain ${hasErrors(bean: answerInstance, field: 'Pytanie', 'error')} required">
	<label for="question">
		<g:message code="answer.question.label" default="Pytanie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${exam.training.app.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>

</div>


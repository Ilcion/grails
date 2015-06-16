<%@ page import="exam.training.app.Answer" %>



<div class="form-group ${hasErrors(bean: answerInstance, field: 'Pytanie', 'error')} required">
	<label for="content" class="col-sm-2 control-label"><g:message code="answer.question.label" default="Pytanie:" /><span class="required-indicator">*</span></label>
	<div  class="col-sm-10">
		<g:select id="question" name="question.id" from="${exam.training.app.Question.list()}" optionKey="id" required="" value="${answerInstance?.question?.id}" class="many-to-one"/>
	</div>
</div>


<div class="form-group ${hasErrors(bean: questionInstance, field: 'Zawartość:', 'error')}">
	<label for="content" class="col-sm-2 control-label"><g:message code="answer.content.label" default="Zawartość" /></label>
	<div class="col-sm-10"> 
		<g:textArea class="form-control" name="content" required="" value="${answerInstance?.content}"  />
	</div>	
</div>

<div class="form-group ${hasErrors(bean: questionInstance, field: 'Poprawność odpowiedzi:', 'error')} required">
	<label for="content" class="col-sm-2 control-label"><g:message code="answer.isValid.label" default="Poprawność odpowiedzi:" /></label>
	<div  class="col-sm-10">
		<g:checkBox class="form-control" size="1" name="isValid" value="${answerInstance?.isValid}" />
	</div>
</div>





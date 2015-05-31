<%@ page import="exam.training.app.User" %>













<div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username" class="col-sm-2 control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="username" class="form-control" required value="${userInstance?.username}"/>
	</div>
</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password" class="col-sm-2 control-label">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="password" class="form-control" required="" value=""/>
	</div>
</div>








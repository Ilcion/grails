<nav>
	<ul class="nav masthead-nav">
		<li
			<g:if test="${request.getRequestURI().matches("/exam-training-app/")}">
      			 class="active"
   			</g:if>
   		>
			<g:link uri="/">Home</g:link>
		</li>
		<sec:access expression="hasRole('ROLE_ADMIN')">
		<li
			<g:if test="${request.getRequestURI().startsWith(request.contextPath + "/grails/question")}">
      			class="active"
   			</g:if>
   		>
			<g:link controller="question">Baza pytań</g:link>
		</li>
		</sec:access>
		<sec:access expression="hasRole('ROLE_ADMIN')">
		<li
			<g:if test="${request.getRequestURI().startsWith("/exam-training-app/grails/user")}">
      			class="active"
   			</g:if>
   		>
			<g:link controller="user">Użytkownicy</g:link>
		</li>
		</sec:access>
		<li
			<g:if test="${request.getRequestURI().startsWith("/exam-training-app/grails/login")}">
		      	class="active"
		   </g:if>
		>
			<sec:ifLoggedIn>
				<form name="logout" method="POST" action="${createLink(controller:'logout') }">
					<input type="submit" value="Wyloguj" id="btnLogout">
				</form>
			</sec:ifLoggedIn>
			<sec:ifNotLoggedIn>
		   		<g:link controller="login" action='auth'>Zaloguj</g:link>
			</sec:ifNotLoggedIn>
		</li>
	</ul>
</nav>
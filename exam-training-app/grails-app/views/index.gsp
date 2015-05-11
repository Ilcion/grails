<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="bootstrap" />
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
					<h1 class="cover-heading">Aplikacja wspomagająca naukę
						przepisów ruchu drogowego.</h1>
					<p class="lead">Przygotuj się dobrze na egzamin prawa jazdy lub
						przypomnij sobie przepisy ruchu drogowego. W Naszej bazie znajduje
						się 3000 pytań egzaminacyjnych. Sprawdź swoją wiedzę już teraz!</p>
					<p class="lead">
						<g:link controller="training" action="start"
							class="btn btn-lg btn-success">Rozpocznij!</g:link>
					</p>
				</div>

				<g:render template="/footer" />
			</div>

		</div>

	</div>
</body>
</html>

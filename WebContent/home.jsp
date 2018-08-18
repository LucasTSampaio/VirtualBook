<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/meu.css" rel="stylesheet" media="screen">

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<div class="header">
					<form action="Controller" method="get"
						class="form-inline float-right" role="form">
						<div class="form-group">
							<label for="name">Nome </label> <input type="name" name="nome"
								class="form-control" id="name" placeholder="Enter nome">
							<input type="hidden" name="acao" value="login">
						</div>
						<div class="form-group">
							<label for="pwd">Password</label> <input type="password"
								name="password" class="form-control" id="pwd"
								placeholder="Enter password">

						</div>
						<button class="btn btn-primary" type="submit"
							class="btn btn-default">Login</button>
						<a class="btn btn-primary" href="cadastro.jsp" role="button">Cadastrar</a>
					</form>
					<h2 class="text-muted">LIVRARIA ONLINE</h2>
					<%String mensagem = (String) request.getAttribute("MENSAGEM");%>
					<p>
						<%=(mensagem == null) ? "" : mensagem%></p>
					<p>${user.nome}</p>
				</div>

			</div>
		</div>
		<div class="row">
			<div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
				<div class="sidebar">
					<ul class="list-group">
						<li class="list-group-item menuLateral">Home</li>
						<li class="list-group-item menuLateral">Todos os Livros</li>
						<li class="list-group-item menuLateral">Categorias
							<ul class="list-group">
								<li class="list-group-item">Java</li>
								<li class="list-group-item">Design Web</li>
								<li class="list-group-item">Cloud Computing</li>
								<li class="list-group-eitem">Big Data</li>
							</ul>
						</li>
						<li class="list-group-item menuLateral">
							<form method="get" class="form-inline" action="Controller">
								<input name="keyWord" class="form-control mr-sm-2" type="search"
									placeholder="Search" aria-label="Search"> <input
									type="hidden" name="acao" value="search">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">Search</button>
							</form> Contacte-nos
						</li>
					</ul>
				</div>
			</div>
			<div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
				<div class="content">

					<p class="h5">Livros em Destaque</p>
					<table class="table table-bordered">
						<tr>
							<td><img src="img/A9781430248064-small_3.png" /></td>
							<td><img src="img/A9781430239963-small_1.png" /></td>
							<td><img src="img/A9781430247647-small_3.png" /></td>
							<td><img src="img/A9781430231684-small_8.png" /></td>
							<td><img src="img/A9781430249474-small_1.png" /></td>
						</tr>
						<tr>
							<td><img src="img/A9781430248187-small_1.png" /></td>
							<td><img src="img/A9781430243779-small_2.png" /></td>
							<td><img src="img/A9781430247401-small_1.png" /></td>
							<td><img src="img/A9781430246596-small_1.png" /></td>
							<td><img src="img/A9781430257349-small_1.png" /></td>
						</tr>
					</table>


				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<div class="footer text-center">Copyright © 2018
					Desenvolvimento WEB - Fametro - Todos os direitos reservados</div>
			</div>
		</div>
	</div>
</body>
</html>

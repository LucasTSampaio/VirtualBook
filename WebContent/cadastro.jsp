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
                <form class="form-inline float-right" role="form"  >
                       <div class="form-group">
                          <label for="name">Nome </label>
                          <input type="name" class="form-control" id="name" placeholder="Enter nome">
                       </div>
                       <div class="form-group">
                          <label for="pwd">Password</label>
                          <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                          
                       </div>
                       <button class="btn btn-primary" type="submit" class="btn btn-default">Login</button>
                       <a class="btn btn-primary" href="cadastro.jsp" role="button">Cadastrar</a>
                    </form>
                <h2 class="text-muted">LIVRARIA ONLINE</h2>
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
    								<input name="keyWord" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
   									 <input type="hidden" name="acao" value= "search">
   									 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  								</form>
                            Contacte-nos</li>
                        </ul>
                </div>
            </div>
            <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">
                <div class="content">
                 
                   <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5">
                    <p class="h5">Cadastro de Clientes</p>
                    
                    <form action= "Controller" method= "get">
                      <div class="form-group">
                        <label for="InputNome">Nome</label>
                        <input type="text" name= "nome" class="form-control" id="InputNome1">
                        <input type="hidden" name= "acao" value= "cadastro">
                      </div>
                      <div class="form-group">
                        <label for="InputSobrenomeNome">Sobrenome</label>
                        <input type="text" name= "sobrenome" class="form-control" id="InputSobreNome" placeholder="Enter Sobrenome">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="senha" class="form-control" id="exampleInputPassword1" placeholder="Password">
                      </div>
                      <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                    	<%
                    		String message = request.getParameter("message");
							if (message == null) {
    						message = "";
							}
							try {
    							out.println(message);
							} catch (java.io.IOException e) {
    							System.out.println("Uma exceção ocorreu em Registrar.jsp: " + e);
							}
						%>
                </div>
                
                
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <div class="footer text-center">Copyright Â© 2018 Desenvolvimento WEB - Fametro - Todos os direitos reservados</div>
            </div>
        </div>
    </div>
</body>
</html>                            
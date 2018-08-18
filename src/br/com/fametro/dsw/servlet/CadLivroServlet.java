package br.com.fametro.dsw.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fametro.dsw.model.CadastroLivroModel;

/**
 * Servlet implementation class CadastroLivroServlet
 */
@WebServlet(name = "CadLivroServlet", urlPatterns = { "/CadLivroServlet" })
public class CadLivroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected  void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
	       response.setCharacterEncoding("UTF-8");
	       request.setCharacterEncoding("UTF-8");
	       
	       Long id = Long.parseLong(request.getParameter("id"));
	       String nome = request.getParameter("nome");
	       String sobreNome = request.getParameter("sobrenome");
	       String email = request.getParameter("email");
	       String senha = request.getParameter("senha");    
	            try{
	            	CadastroLivroModel cadastroLivroModel = new CadastroLivroModel();	
	            	cadastroLivroModel.setId(id);
	            	cadastroLivroModel.setNome(nome);
	            	cadastroLivroModel.setSobreNome(sobreNome);
	            	cadastroLivroModel.setEmail(email);
	            	cadastroLivroModel.setSenha(senha);
	            /*CadAlunoDao cadAlunoDao = new CadAlunoDao();
	            CadAlunoModel cadAlunoModel = new CadAlunoModel(id, nome, nascimento, sexo ,rg, cpf, email, telFixo, telCelular,
	                    endereco, numero, bairro, cidade, estado, cep, matricula, curso, semestre, turno);
	       cadAlunoDao.editar(cadAlunoModel);*/
	       response.sendRedirect("teste.jsp");
	       }catch(Exception e){
	           response.sendRedirect("erros.jsp");
	       e.printStackTrace();
	       }
		
	}

	protected  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
	}
}

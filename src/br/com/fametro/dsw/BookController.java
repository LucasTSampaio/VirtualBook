package br.com.fametro.dsw;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fametro.exception.SenhaInvalida;

@WebServlet("/Controller")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BookController() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	private void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
		String acao = request.getParameter("acao");
		String palavraChave = request.getParameter("keyWord");
		if ("search".equals(acao)){
				searchBooks(request, response, palavraChave);
		}
		else if ("login".equals(acao)){
			try{
				String nome = request.getParameter("nome");
				String senha = request.getParameter("password");
				verifyLogin(request, response, nome, senha);
			} 
			catch (SenhaInvalida e) {
				e.printStackTrace();
				request.setAttribute("MENSAGEM", e.getMessage());
				context.getRequestDispatcher("/home.jsp").forward(request, response);
			}
		}else if("cadastro". equals(acao)){
			String nomecad = request.getParameter("nome");
			String sobrenomecad = request.getParameter("sobrenome");
			String senhacad = request.getParameter("senha");
			String emailcad = request.getParameter("email");
			
			cadUser(request, response, nomecad, sobrenomecad, senhacad, emailcad);
		}
	}

	private void cadUser(HttpServletRequest request, HttpServletResponse response, String nome, String sobrenome,String senha, String email) throws ServletException, IOException {
		ServletContext context = getServletContext();
		User user = new User();
		
		user.setNome(nome);
		user.setSobrenome(sobrenome);
		user.setSenha(senha);
		user.setEmail(email);
		
		Mapper mpp = new Mapper();
		mpp.adiciona(user);
		
		context.getRequestDispatcher("/home.jsp").forward(request, response);
		
	}

	private void verifyLogin(HttpServletRequest request, HttpServletResponse response, String nome, String senha) throws SenhaInvalida, ServletException, IOException {
		ServletContext context = getServletContext();
		Mapper mpp = new Mapper();
		
		User user = mpp.vericaLogin(nome, senha);
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		context.getRequestDispatcher("/home.jsp").forward(request, response);
	}

	private void searchBooks(HttpServletRequest request, HttpServletResponse response, String palavraChave) {
		response.setContentType("text/html");
		
		try{
			PrintWriter out = response.getWriter();
			Mapper mpp = new Mapper();
			Livros livro = mpp.searchBookByKeyword(palavraChave);
			out.println("<html>");
			out.println("<head>");
			out.println("<Título> Book Store - Pesquisas de Livros");
			out.println("</head>");
			out.println("<body>");
			out.println("<p> Título do Livro: " + livro.getTítulo());
			out.println("</body>");
			out.println("</html>");
			
		}catch (Exception e){
			System.out.println(e);
			
		}
	}	
	
}

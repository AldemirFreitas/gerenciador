package br.com.alura.gerenciador.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout implements Tarefa {
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		// Cookie cookie = new Cookies(req.getCookies()).buscaUsuarioLogado();
		// Remove somente o atributo, como nesta session só temos um atributo já
		// serve

		// 2º Opção req.getSession().invalidate();

		/*
		 * if (cookie==null){ writer.println(
		 * "<html><body>Usuario não está logado!</body></html>"); return; }
		 */
		// cookie.setMaxAge(0);
		// resp.addCookie(cookie);

		// PrintWriter writer = resp.getWriter();
		// writer.println("<html><body>Deslogado com sucesso!</body></html>");
		req.getSession().removeAttribute("usuarioLogado");
		// Case sensitive Paginas...
		return ("/WEB-INF/Paginas/logout.html");
		// resp.sendRedirect("/logout.html");
	}
}

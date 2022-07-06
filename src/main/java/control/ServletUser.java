package control;

import java.io.IOException;
import java.util.Vector;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import model.UserDB;


@WebServlet("/")
public class ServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletUser() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Vector<User> users;
		
		if(request.getServletPath().equals("/users")) {
			
			users = UserDB.getAll();
			request.setAttribute("users", users);
			request.getRequestDispatcher("user.jsp").forward(request, response);
			
			
		}
		
		else if(request.getServletPath().equals("/liste")) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			User user = UserDB.getUser(id);
			request.setAttribute("user", user);
			request.getRequestDispatcher("liste.jsp").forward(request, response);
			
		}
		else if(request.getServletPath().equals("/delete")) {
			
			int id = Integer.parseInt(request.getParameter("id")) ; 
			UserDB.deleteUser(id);
			users = UserDB.getAll() ; 
			
			request.setAttribute("users", users);
			
			request.getRequestDispatcher("user.jsp").forward(request, response);	
		}
		
		else if(request.getServletPath().equals("/update")) {
			
			int id = Integer.parseInt(request.getParameter("id")) ; 
			
			
			request.setAttribute("users", UserDB.getUser(id));
			request.getRequestDispatcher("update.jsp").forward(request, response);
			
			
		}


else if(request.getServletPath().equals("/saisie")) {
			
			
	response.sendRedirect("saisie.jsp");

			
			
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		int id;
		String nom, prenom, email;
		
		User user;
		
		
		if(request.getServletPath().equals("/add")) {
		 nom = request.getParameter("nom");
		 prenom = request.getParameter("prenom");
		 email = request.getParameter("email");
		 
		 user = new User(nom, prenom, email);
		 UserDB.addUser(user);
		 request.setAttribute("users", UserDB.getAll());
		 request.getRequestDispatcher("user.jsp").forward(request, response);
		}
		
		else if(request.getServletPath().equals("/update")) {
			
			 id = Integer.parseInt(request.getParameter("id")) ;
			 nom = request.getParameter("nom");
			 prenom = request.getParameter("prenom");
			 email = request.getParameter("email");
			 
			 user = new User(id, nom, prenom, email);
			 UserDB.updateUser(user);
			 request.setAttribute("users", UserDB.getAll());
			 request.getRequestDispatcher("user.jsp").forward(request, response);
		}
		
		
		
		
		
		
		
		
		
	}

}

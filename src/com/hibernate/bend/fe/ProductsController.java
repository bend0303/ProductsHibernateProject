package com.hibernate.bend.fe;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hibernate.bend.be.ProductsDAO;

/**
 * Servlet implementation class ProductsController
 */
@WebServlet({"/Products", "/Product/*"})
public class ProductsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getRequestURL().toString();
		System.out.println(path);
		String[] pathSplit = path.split("/");

		if ("Product".equals(pathSplit[pathSplit.length-2]))
		{
			ProductsDAO dao = ProductsDAO.getInstance();
			int idLoc = pathSplit.length;
			String sId = pathSplit[idLoc-1];
			int id = Integer.parseInt(sId);
			Product p = dao.getProductById(id);
			request.setAttribute("productView", p);
			request.setAttribute("idToView", id);
			getServletContext().getRequestDispatcher("/ProductView.jsp").forward(request,response);
		}
		else if ("Products".equals(pathSplit[pathSplit.length-1])) {
			getServletContext().getRequestDispatcher("/ProductsTable.jsp").forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	doGet(request,response);
	}

}

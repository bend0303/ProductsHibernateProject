package com.hibernate.bend.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductsServlet
 */
@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String singleDelete = request.getParameter("singleDelete");
		if (singleDelete != null && !singleDelete.isEmpty()) 
				doDelSingleProduct(singleDelete);
		
		
		String ids[] = request.getParameterValues("delCheckbox");
		if (ids != null && ids.length > 0)
			for (String s: ids) {
				doDelSingleProduct(s);
			}
		
		getServletContext().getRequestDispatcher("/ProductsTable.jsp").forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
	
	private void doDelSingleProduct(String id) throws ServletException, IOException {
		int intId = Integer.parseInt(id);
		ProductDelegate delegate = new ProductDelegate();
		delegate.delSingleProduct(intId);
	}

}

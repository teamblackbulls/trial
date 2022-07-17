package schedule.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import staff.dao.*;
import staff.model.*;

/**
 * Servlet implementation class UpdateScheduleController
 */
@WebServlet("/UpdateScheduleController")
public class UpdateScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ScheduleDAO dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateScheduleController() {
        super();
        dao = new ScheduleDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("s", ScheduleDAO.getScheduleById(id));
		RequestDispatcher view = request.getRequestDispatcher("updateSchedule.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Schedule s = new Schedule();		
		s.setScheduleDate(request.getParameter("Scheduledate"));
		s.setPrayerID(Integer.parseInt(request.getParameter("prayerid")));
		s.setStaffID(request.getParameter("staffid"));
		
		
		dao.updateSchedule(s);
		
		request.setAttribute("Schedules", ScheduleDAO.getAllSchedules());
		RequestDispatcher view = request.getRequestDispatcher("listSchedule.jsp");
		view.forward(request, response);
	}

}

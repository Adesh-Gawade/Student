import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
    private RegisterDao rDao;

    public void init() {
        rDao = new RegisterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String course = request.getParameter("course");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String password = request.getParameter("password");
       
  

        Member member = new Member();
        member.setCourse(course);
        member.setFirstName(firstname);
        member.setLastName(lastname);
        member.setEmail(email);
        member.setMobile(mobile);
        member.setGender(gender);
        member.setCity(city);
        member.setState(state);
        member.setPassword(password);

     

        try {
            rDao.registerMember(member);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("Thank.jsp");
    }
}
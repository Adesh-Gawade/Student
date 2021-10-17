import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RegisterDao {

    public int registerMember(Member member) throws ClassNotFoundException {
    	 String INSERT_USERS_SQL = "INSERT INTO member" +
    	            "  ( course, firstname, lastname, email, mobile, gender, city, state, password) VALUES " +
    	            " ( ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/student?useSSL=false", "root", "mysql");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
        	preparedStatement.setString(1, member.getCourse());       
        	preparedStatement.setString(2, member.getFirstName());
            preparedStatement.setString(3, member.getLastName());
            preparedStatement.setString(4, member.getEmail());
            preparedStatement.setString(5, member.getMobile());
            preparedStatement.setString(6, member.getGender());
            preparedStatement.setString(7, member.getCity());
            preparedStatement.setString(8, member.getState());
            preparedStatement.setString(9, member.getPassword());
          
       

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
       
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
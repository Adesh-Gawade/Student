
import java.io.Serializable;


public class Member implements Serializable {
 
    private static final long serialVersionUID = 1L;
    private String course;
    private String firstName;
    private String lastName;
    private String email;
    private String mobile;
    private String gender;
    private String city;
    private String state;
    private String password;

    public String getCourse() {
        return course;
    }
    public void setCourse(String course) {
        this.course = course;
    } 
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
  
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city= city;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
   
}
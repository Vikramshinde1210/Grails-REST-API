package grails.rest
import org.springframework.security.crypto.bcrypt.BCrypt

class Persons{
    Long id
    String grno_empcode
    String username
    String fullname
    String email
    Long mobile
    Integer department
    Integer college
    Integer roleid
    Integer usertype_id
    String createdat
    String updatedat
    String password

    List<String> roles

    def springSecurityService
    static transients = ["springSecurityService"]
    boolean isValidPassword(String plainPassword){
        return BCrypt.checkpw( plainPassword,this.password)
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }

    void addRole(String role){
        roles.push("ROLE_" + role.toUpperCase())
    }

    static mapping = {
        table "persons"
        version false
        id column:'Person_id'
    }
    static constraints = {
        
    }
}
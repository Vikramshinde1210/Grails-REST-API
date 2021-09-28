package grails.rest
import org.springframework.security.crypto.bcrypt.BCrypt

import java.util.Date


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
    String date_created;

    List<String> roles
    transient springSecurityService
    static transients = ["springSecurityService"]

    boolean isValidPassword(String plainPassword){
        if(this.password.startsWith("{bcrypt}")){
            return BCrypt.checkpw( plainPassword,this.password.substring(8))
        }
        return BCrypt.checkpw( plainPassword,this.password)

    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }

    void addRole(String role){
        roles.push("ROLE_" + role.toUpperCase())
    }

    def beforeInsert(){
        encodePassword()
        createdat = new Date().toTimestamp().toString()
        updatedat = new Date().toTimestamp().toString()
        date_created = new Date().toTimestamp().toString()
    }

    static mapping = {

        autowire true
        table "persons"
        version false
        id column:'Person_id'
        date_created column: 'date_created'

    }
    static constraints = {
        createdat nullable: true
        updatedat nullable: true
        roles nullable: true
        date_created nullable:true
    }
}
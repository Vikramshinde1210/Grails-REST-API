package grails.rest
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
    static mapping = {
        table "persons"
        version false
        id column:'Person_id'
    }
    static constraints = {
        
    }
}
package grails.rest
class Usertype{
    Long user_id
    String user_Name
    Long college_id
    static mapping = {
        table "usertype"
        version false
        id column:'User_id'
    }
    static constraints = {
        
    }
}
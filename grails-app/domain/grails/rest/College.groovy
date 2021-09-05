package grails.rest
class College{
    Long id
    String college_name
    String college_full
    static mapping = {
        table "college"
        version false
        id column:'College_id'
    }
    static constraints = {
        
    }
}
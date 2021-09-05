package grails.rest
class Department{
    Long id
    String department_name
    Long college_id
    static mapping = {
        table "department"
        version false
        id column:'Department_id'
    }
    static constraints = {
        
    }
}
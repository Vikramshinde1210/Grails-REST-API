package grails.rest

class ProjectActivityLog {

    Integer id
    String activity_name
    String activity_description
    String activity_datetime 
    Integer person_id
    
    static mapping = {
        table "projectactivitylog"
        version false
        id column:'Activity_id'
    }
    // static constraints = {
    // }
}

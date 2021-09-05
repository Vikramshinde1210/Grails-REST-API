package grails.rest
class Weekstatus{
    Long id
    Integer week
    Integer no_of_tasks
    Long group_id
    Integer status
    String start_date
    String due_date
    static mapping = {
        table "week_status"
        version false
        id column:'week_status_id'
    }
    static constraints = {
        
    }
}
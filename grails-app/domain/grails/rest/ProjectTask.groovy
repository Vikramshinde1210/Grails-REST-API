package grails.rest
class ProjectTask {

    Integer task_id
    Integer group_id
    String task_name
    String alloted_to
    String due_date
    String start_date
    String task_details
    String challenges
    String submitted_date
    String reason
    String approved_date
    String status
    String deleted_date
    Integer task_status
    Integer rejected_count  
    
    static mapping = {
        table "projecttask"
        version false
        id column:'Task_id'
    }

}

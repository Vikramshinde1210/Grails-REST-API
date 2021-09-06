package grails.rest

class ProjectTaskLogs {

    Integer project_task_id
    Integer task_id
    Integer group_id
    String task_name
    String alloted_to
    String due_date
    String start_date
    String task_details
    String challenges
    String approved_date
    String status
    String deleted_date

    static mapping = {
        table "projecttasklogs"
        version false
        id column:'Project_Task_id'
    }
}

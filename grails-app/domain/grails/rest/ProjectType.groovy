package grails.rest

class ProjectType {

    Integer id
    String project_type_name 
    Integer college_id

    static mapping = {
        table 'project_type'
        version false
        id column: 'project_type_id'
    }

}
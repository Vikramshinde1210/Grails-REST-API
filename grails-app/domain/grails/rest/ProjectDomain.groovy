package grails.rest
class ProjectDomain {

    Integer id
    String domain_name
    Integer department_id
    Integer college_id

    static mapping = {
        table "projectdomain"
        version false
        id column:'Domain_id'
    }
}

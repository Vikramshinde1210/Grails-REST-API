package grails.rest

class Industryproject {

    Long id
    Long company_id
    String duedate
    String description
    Long facultyref
    String links
    String college_id
    Long visible

    // static constraints = {
    // }

    static mapping = {
        table "industryproject"
        version false
        id column:'industry_project_id'
    }
}

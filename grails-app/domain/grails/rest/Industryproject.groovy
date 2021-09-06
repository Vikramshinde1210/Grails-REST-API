package demo.api

class Industryproject {

    Long id
    Long Company_id
    String DueDate
    String Description
    Long FacultyRef
    String Links
    String College_id
    Long visible

    static constraints = {
    }

    static mapping = {
        table "industryproject"
        version false
        id column:'industry_project_id'
    }
}

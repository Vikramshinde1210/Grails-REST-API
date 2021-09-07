package grails.rest

class Industryproject_department {

    Long id
    Long industryproject_id
    Long Department_id	

    static constraints = {
    }

     static mapping = {
        table "industryproject_department"
        version false
        id column:'industryproject_department_id'
    }
}

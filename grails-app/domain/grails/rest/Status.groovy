package grails.rest

class Status {

    Integer id
    String status_name
    Integer college_id

    static mapping = {
        table 'status'
        version false
        id column: 'Status_id'
    }

}

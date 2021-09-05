package grails.rest
class Ftrmaster{
    Long id
    Long ftr_number
    String ftr_name
    String ay
    Integer sem
    Integer college_id
    Integer department_id
    Integer no_of_questions
    String due_date

    static mapping = {
        table "ftrmaster"
        version false
        id column:'ftr_master_id'
    }
    static constraints = {
        
    }
}
package grails.rest
class Learner_project_reg{
    Long id
    Integer group_id
    Integer learner_id
    Integer registered
    static mapping = {
        table "learner_project_reg"
        version false
        id column:'Learner_Reg_id'
    }
    static constraints = {
        
    }
}
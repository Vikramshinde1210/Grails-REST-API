package grails.rest

class Learner {
    Long id
    Integer module_id
    Integer person_id
    static mapping = {
        table "learner"
        version false
        id column:'Learner_id'
    }
    static constraints = {
        // learner_id nullable:true
        // module_id nullable:false
        // person_id nullable:false
        // person_id unique:true
    }
}

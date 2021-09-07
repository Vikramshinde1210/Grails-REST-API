package grails.rest

class Ftr_questions {

    Long id
    Long question_number
    Long ftr_master_id
    String question_text
    

    static constraints = {
        
    }

     static mapping = {
        table "ftr_questions"
        version false
        id column:'ftr_questions_id'
    }
}

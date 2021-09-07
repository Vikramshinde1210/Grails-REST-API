package grails.rest

class Ftr_question_ftr_group {
    Long id
    Long ftr_question_id
    Long ftr_project_group_id
    Long ftr_master_id
    String Answer
    Long version

    static constraints = {
    }

    static mapping = {
        table "ftr_question_ftr_group"
        version false
        id column:'ftr_ques_gro_id'
    }


}
package grails.rest

class Support {
    
    Integer id
    Integer group_id
    Integer learner_id
    Integer support_description_id
    Integer resolved

    static mapping = {
        table 'support'
        version false
        id column: 'Support_id'
    }

    // static constraints = {
    //     Resolved: true, blank: true
    // }
}

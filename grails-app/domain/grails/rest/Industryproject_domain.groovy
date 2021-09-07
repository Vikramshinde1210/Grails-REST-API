package grails.rest

class Industryproject_domain {
    Long id
    Long industryproject_id
    Long domain_id


    static constraints = {
    }

   static mapping = {
        table "industryproject_domain"
        version false
        id column:'industryproject_domain_id'
    }
}

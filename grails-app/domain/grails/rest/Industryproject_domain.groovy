package demo.api

class Industryproject_domain {
    Long industryproject_domain_id
    Long industryproject_id
    Long Domain_id


    static constraints = {
    }

   static mapping = {
        table "industryproject_domain"
        version false
        id column:'industryproject_domain_id'
    }
}

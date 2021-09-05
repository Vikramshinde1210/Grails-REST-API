package grails.rest
class Companylist{
    Long company_id
    String company_name
    static mapping = {
        table "company"
        version false
        id column:'Company_id'
    }
    static constraints = {
        
    }
}
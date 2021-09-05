package grails.rest
class City{
    Long id
    String division
    String name
    String description
    Long population
    static mapping = {
        table "city"
        version false
        id column:'city_id'
    }
    static constraints = {
        
    }
}
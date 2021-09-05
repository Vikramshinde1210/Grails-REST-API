package grails.rest
class Module{
    Long id
    String module_name
    Integer college_id
    static mapping = {
        table "module"
        version false
        id column:'Module_id'
    }
    static constraints = {
        
    }
}
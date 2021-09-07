package grails.rest


class User_roles {

    String createdAt
    String updatedAt
    Long roleId
    Long person_id

    static constraints = {
    }

    static mapping = {
        table "user_roles"
        version false
        // id composite:['roleId', 'person_id'] 
    }
}

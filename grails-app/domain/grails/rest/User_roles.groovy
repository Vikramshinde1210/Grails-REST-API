package demo.api

class User_roles {

    String createdAt
    String updatedAt
    Long id
    Long Person_Id

    static constraints = {
    }

    static mapping = {
        table "user_roles"
        version false
        id column:'role_Id'
    }
}

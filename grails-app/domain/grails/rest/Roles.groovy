package grails.rest
import java.util.Date

class Roles {

    Integer id
    String name 
    Integer college_id
    String createdAt
    String updatedAt

    static mapping = {
        createdAt defaultValue: "now()"
    }
}

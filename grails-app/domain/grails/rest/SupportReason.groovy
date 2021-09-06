package grails.rest

class SupportReason {

    Integer id
    Integer support_description_name

    static mapping = {
        table 'supportreason'
        version false
        id column: 'Support_Description_id'
    }

}

package grails.rest
class ProjectGroup {
    Integer id
    String group_name
    String group_title
    String year 
    Integer instructor_id1
    Integer instructor_id2
    Integer instructor_id_industry
    Integer initial_time
    Integer design_time
    Integer development_time
    Integer testing_time
    Integer deployment_time
    Integer department_id
    Integer college_id
    Integer final_domain
    Integer domain_pref_1
    Integer domain_Pref_2
    Integer domain_Pref_3
    Integer status_id
    Integer project_type_id
    Integer industry_project_id
    String objective
    String scope
    Date createdate
    Date startdate
    
    static mapping = {
        table "projectgroup"
        version false
        id column:'Group_id'
    }

    static constraints = {
    }
}

package grails.rest

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class ProjectGroupService {
    def dataSource

    def list(def params, def request) {
        return ProjectGroup.findAll()
    }

    def single(def params, def request) {
        return ProjectGroup.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectGroup(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectGroup.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectGroup.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }

    def verifyUserByGroupId(def params, def request) {
        try {
            def id = params?.id
            String query
            def sql = new Sql(dataSource);
            query = "Select l.Person_id from learner_project_reg  lg JOIN learner l ON lg.Learner_id = l.Learner_id  where lg.Group_id = ${id}"
            def group = sql.rows(query)

            query = "Select persons.Person_id, persons.department from project_group JOIN instructor ON project_group.Instructor_id1 = instructor.Instructor_id JOIN persons on persons.Person_id = instructor.Person_id where Group_id = ${id}"
            def rows = sql.rows(query)

            HashMap hm = new HashMap()
            hm.put("group",group)
            hm.put("guide",rows[0].get("Person_id"))
            hm.put("department",rows[0].get("department"))
            return hm

        } catch (Exception e) {
            e.printStackTrace()
        }
    }

    def getGroupDetailsByGroupId(def params, def request) {
        try {
            def id = params?.id
            def sql = new Sql(dataSource);
            String query = "select a.* ,pt.Project_Type_Name as type,C.Company_name as company,b1.FullName,b2.Mobile,b3.email, ip1.industryguide_name as guide2,ip1.industryguide_email as guide2email,c1.College_Name as clg,dd1.Department_Name,d1.Domain_Name as dom1,d2.Domain_Name as dom2,d3.Domain_Name as dom3,d4.Domain_Name as dom4 from project_group a Join department dd1 on dd1.Department_id=a.Department_id  JOIN persons b1 on b1.Person_id=(select ins.Person_id from instructor ins where ins.Instructor_id=a.Instructor_id1) JOIN persons b2 on b2.Person_id=(select ins.Person_id from instructor ins where ins.Instructor_id=a.Instructor_id1) JOIN persons b3 on b3.Person_id=(select ins.Person_id from instructor ins where ins.Instructor_id=a.Instructor_id1) Join college c1 on c1.College_id=a.College_id Join project_domain d1 on d1.Domain_id=a.Domain_Pref_1 Join project_domain d2 on d2.Domain_id=a.Domain_Pref_2 Join project_domain d3 on d3.Domain_id=a.Domain_Pref_3 Join project_type pt on pt.Project_Type_id=a.Project_Type_id Join company C on C.Company_id=(select ip.Company_id from industryproject ip where ip.industry_project_id=a.industry_project_id) Join project_domain d4 on d4.Domain_id=a.final_domain JOIN industryproject ip1 ON ip1.industry_project_id = a.industry_project_id where a.Group_id=$id"
            return sql.rows(query)
        } catch (Exception e) {
            e.printStackTrace()
        }
    }

}

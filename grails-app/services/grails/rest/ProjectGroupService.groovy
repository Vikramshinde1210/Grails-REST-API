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
}

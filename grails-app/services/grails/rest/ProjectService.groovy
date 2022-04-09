package grails.rest

import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class ProjectService {

    def dataSource

    def getProjectByPersonId(def params, def request) {
        String query = "Select pg.*, persons.FullName as guide from  learner l JOIN learner_project_reg lpr  ON l.Learner_id = lpr.Learner_id JOIN project_group pg ON lpr.Group_id = pg.Group_id JOIN instructor ins on pg.Instructor_id1 = ins.Instructor_id JOIN persons on ins.Person_id = persons.Person_id where l.Person_id = " + params.id;
        def sql = new Sql(dataSource);
        return sql.rows(query)
    }

    def serviceMethod() {

    }
}

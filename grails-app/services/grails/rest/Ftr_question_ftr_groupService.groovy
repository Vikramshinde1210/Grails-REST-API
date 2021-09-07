package grails.rest

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class Ftr_question_ftr_groupService {

    def list(def params, def request) {
        return Ftr_question_ftr_group.findAll()
    }

    def single(def params, def request) {
        return Ftr_question_ftr_group.findById(params?.id)
    }

    def save(def params, def request) {
        def Ftr_question_ftr_groupJson = request.JSON
        def Ftr_question_ftr_groupInstance = new Ftr_question_ftr_group(Ftr_question_ftr_groupJson)

        Ftr_question_ftr_groupInstance = Ftr_question_ftr_groupInstance.save()

        return Ftr_question_ftr_groupInstance
    }

    def update(def params, def request) {
        def Ftr_question_ftr_groupJson = request.JSON
        def Ftr_question_ftr_groupInstance = Ftr_question_ftr_group.get(params?.id)
        Ftr_question_ftr_groupInstance.properties = Ftr_question_ftr_groupJson

        Ftr_question_ftr_groupInstance = Ftr_question_ftr_groupInstance.merge()

        return Ftr_question_ftr_groupInstance
    }

    def delete(def params, def request) {
        def Ftr_question_ftr_groupInstance = Ftr_question_ftr_group.get(params?.id)
        Ftr_question_ftr_groupInstance = Ftr_question_ftr_groupInstance.delete()

        return Ftr_question_ftr_groupInstance
    }
}

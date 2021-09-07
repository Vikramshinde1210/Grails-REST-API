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
        def ftrJson = request.JSON
        def ftrInstance = new Ftr_question_ftr_group(ftrJson)

        ftrInstance = ftrInstance.save()

        return ftrInstance
    }

    def update(def params, def request) {
        def ftrJson = request.JSON
        def ftrInstance = Ftr_question_ftr_group.get(params?.id)
        ftrInstance.properties = ftrJson

        ftrInstance = ftrInstance.merge()

        return ftrInstance
    }

    def delete(def params, def request) {
        def ftrInstance = Ftr_question_ftr_group.get(params?.id)
        ftrInstance = ftrInstance.delete()

        return ftrInstance
    }
}

package demo.api

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class Ftr_questionsService {


     def list(def params, def request) {
        return Ftr_questions.findAll()
    }

    def single(def params, def request) {
        return Ftr_questions.findById(params?.id)
    }

    def save(def params, def request) {
        def ftrJson = request.JSON
        def ftrInstance = new Ftr_questions(ftrJson)

        ftrInstance = ftrInstance.save()

        return ftrInstance
    }

    def update(def params, def request) {
        def ftrJson = request.JSON
        def ftrInstance = Ftr_questions.get(params?.id)
        ftrInstance.properties = ftrJson

        ftrInstance = ftrInstance.merge()

        return ftrInstance
    }

    def delete(def params, def request) {
        def ftrInstance = Ftr_questions.get(params?.id)
        ftrInstance = ftrInstance.delete()

        return ftrInstance
    }
}

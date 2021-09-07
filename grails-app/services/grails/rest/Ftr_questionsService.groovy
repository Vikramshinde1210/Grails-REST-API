package grails.rest

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
        def Ftr_questionsJson = request.JSON
        def Ftr_questionsInstance = new Ftr_questions(Ftr_questionsJson)

        Ftr_questionsInstance = Ftr_questionsInstance.save()

        return Ftr_questionsInstance
    }

    def update(def params, def request) {
        def Ftr_questionsJson = request.JSON
        def Ftr_questionsInstance = Ftr_questions.get(params?.id)
        Ftr_questionsInstance.properties = Ftr_questionsJson

        Ftr_questionsInstance = Ftr_questionsInstance.merge()

        return Ftr_questionsInstance
    }

    def delete(def params, def request) {
        def Ftr_questionsInstance = Ftr_questions.get(params?.id)
        Ftr_questionsInstance = Ftr_questionsInstance.delete()

        return Ftr_questionsInstance
    }
}

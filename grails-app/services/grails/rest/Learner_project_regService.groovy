package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class Learner_project_regService {

    def list(def params, def request) {
        return Learner_project_reg.findAll()  
    }

    def single(def params, def request) {
        return Learner_project_reg.findById(params?.id)
    }

    def save(def params, def request) {
        def Learner_project_regJson = request.JSON
        def Learner_project_regInstance = new Learner_project_reg(Learner_project_regJson)

        Learner_project_regInstance = Learner_project_regInstance.save()

        return Learner_project_regInstance
    }

    def update(def params, def request) {
        def Learner_project_regJson = request.JSON
        def Learner_project_regInstance = Learner_project_reg.get(params?.id)
        Learner_project_regInstance.properties = Learner_project_regJson

        Learner_project_regInstance = Learner_project_regInstance.merge()

        return Learner_project_regInstance
    }

    def delete(def params, def request) {
        def Learner_project_regInstance = Learner_project_reg.get(params?.id)
        Learner_project_regInstance = Learner_project_regInstance.delete()

        return Learner_project_regInstance
    }
}
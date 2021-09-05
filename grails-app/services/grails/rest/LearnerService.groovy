package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class LearnerService {
    def list(def params, def request) {
        return Learner.findAll()  
    }

    def single(def params, def request) {
        return Learner.findById(params?.id)
    }

    def save(def params, def request) {
        def LearnerJson = request.JSON
        def LearnerInstance = new Learner(LearnerJson)

        LearnerInstance = LearnerInstance.save()

        return LearnerInstance
    }

    def update(def params, def request) {
        def LearnerJson = request.JSON
        def LearnerInstance = Learner.get(params?.id)
        LearnerInstance.properties = LearnerJson

        LearnerInstance = LearnerInstance.merge()

        return LearnerInstance
    }

    def delete(def params, def request) {
        def LearnerInstance = Learner.get(params?.id)
        LearnerInstance = LearnerInstance.delete()

        return LearnerInstance
    }
    def serviceMethod() {

    }
}

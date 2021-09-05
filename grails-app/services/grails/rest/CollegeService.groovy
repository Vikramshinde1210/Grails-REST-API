package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class CollegeService {

    def list(def params, def request) {
        return College.findAll()  
    }

    def single(def params, def request) {
        return College.findById(params?.id)
    }

    def save(def params, def request) {
        def CollegeJson = request.JSON
        def CollegeInstance = new College(CollegeJson)

        CollegeInstance = CollegeInstance.save()

        return CollegeInstance
    }

    def update(def params, def request) {
        def CollegeJson = request.JSON
        def CollegeInstance = College.get(params?.id)
        CollegeInstance.properties = CollegeJson

        CollegeInstance = CollegeInstance.merge()

        return CollegeInstance
    }

    def delete(def params, def request) {
        def CollegeInstance = College.get(params?.id)
        CollegeInstance = CollegeInstance.delete()

        return CollegeInstance
    }
}
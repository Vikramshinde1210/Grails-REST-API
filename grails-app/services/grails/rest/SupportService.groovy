package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class SupportService {

    def list(def params, def request) {
        return Support.findAll()  
    }

    def single(def params, def request) {
        return Support.findById(params?.id)
    }

    def save(def params, def request) {
        def supportJson = request.JSON
        def supportInstance = new Support(supportJson)

        supportInstance = supportInstance.save()

        return supportInstance
    }

    def update(def params, def request) {
        def supporJson = request.JSON
        def supportInstance = Support.get(params?.id)
        supportInstance.properties = supportJson

        supportInstance = supportInstance.merge()

        return supportInstance
    }

    def delete(def params, def request) {
        def supportInstance = Support.get(params?.id)
        supportInstance = supportInstance.delete()

        return supportInstance
    }
}

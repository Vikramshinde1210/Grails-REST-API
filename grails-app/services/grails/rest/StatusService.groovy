package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class StatusService {

    def list(def params, def request) {
        return Status.findAll()  
    }

    def single(def params, def request) {
        return Status.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new Status(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = Status.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = Status.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

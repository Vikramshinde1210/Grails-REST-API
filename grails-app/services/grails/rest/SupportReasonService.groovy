package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class SupportReasonService {

    def list(def params, def request) {
        return SupportReason.findAll()  
    }

    def single(def params, def request) {
        return SupportReason.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new SupportReason(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = SupportReason.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = SupportReason.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

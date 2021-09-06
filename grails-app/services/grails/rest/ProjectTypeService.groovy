package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class ProjectTypeService {

    def list(def params, def request) {
        return ProjectType.findAll()  
    }

    def single(def params, def request) {
        return ProjectType.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectType(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectType.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectType.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

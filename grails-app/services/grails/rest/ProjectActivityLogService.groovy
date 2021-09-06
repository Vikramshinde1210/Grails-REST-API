package grails.rest
import grails.gorm.transactions.Transactional

@Transactional
class ProjectActivityLogService {
 def list(def params, def request) {
        return ProjectActivityLog.findAll()  
    }

    def single(def params, def request) {
        return ProjectActivityLog.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectActivityLog(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectActivityLog.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectActivityLog.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

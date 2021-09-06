package grails.rest
import grails.gorm.transactions.Transactional

@Transactional
class ProjectTaskLogsService {
   def list(def params, def request) {
        return ProjectTaskLogs.findAll()  
    }

    def single(def params, def request) {
        return ProjectTaskLogs.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectTaskLogs(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectTaskLogs.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectTaskLogs.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

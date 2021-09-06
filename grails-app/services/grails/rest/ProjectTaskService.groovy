package grails.rest
import grails.gorm.transactions.Transactional

@Transactional
class ProjectTaskService {

     def list(def params, def request) {
        return ProjectTask.findAll()  
    }

    def single(def params, def request) {
        return ProjectTask.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectTask(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectTask.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectTask.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

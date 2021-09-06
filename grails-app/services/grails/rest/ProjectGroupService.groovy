package grails.rest
import grails.gorm.transactions.Transactional

@Transactional
class ProjectGroupService {
def list(def params, def request) {
        return ProjectGroup.findAll()  
    }

    def single(def params, def request) {
        return ProjectGroup.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectGroup(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectGroup.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectGroup.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

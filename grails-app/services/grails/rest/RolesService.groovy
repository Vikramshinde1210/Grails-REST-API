package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class RolesService {

    def list(def params, def request) {
        return Roles.findAll()  
    }

    def single(def params, def request) {
        return Roles.findById(params?.id)
    }

    def save(def params, def request) {
        def rolesJson = request.JSON
        def rolesInstance = new Roles(rolesJson)

        rolesInstance = rolesInstance.save()

        return rolesInstance
    }

    def update(def params, def request) {
        def rolesJson = request.JSON
        def rolesInstance = Roles.get(params?.id)
        rolesInstance.properties = rolesJson

        rolesInstance = rolesInstance.merge()

        return rolesInstance
    }

    def delete(def params, def request) {
        def rolesInstance = Roles.get(params?.id)
        rolesInstance = rolesInstance.delete()

        return rolesInstance
    }
}

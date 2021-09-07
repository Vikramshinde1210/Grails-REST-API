package grails.rest
import grails.gorm.transactions.Transactional
import groovy.sql.Sql 
@Transactional
class User_rolesService {

    def list(def params, def request) {
        return User_roles.findAll()
    }

    def single(def params, def request) {
        return User_roles.findById(params?.id)
    }

    def save(def params, def request) {
        def User_rolesJson = request.JSON
        def User_rolesInstance = new User_roles(User_rolesJson)

        User_rolesInstance = User_rolesInstance.save()

        return User_rolesInstance
    }

    def update(def params, def request) {
        def User_rolesJson = request.JSON
        def User_rolesInstance = User_roles.get(params?.id)
        User_rolesInstance.properties = User_rolesJson

        User_rolesInstance = User_rolesInstance.merge()

        return User_rolesInstance
    }

    def delete(def params, def request) {
        def User_rolesInstance = User_roles.get(params?.id)
        User_rolesInstance = User_rolesInstance.delete()

        return User_rolesInstance
    }
}

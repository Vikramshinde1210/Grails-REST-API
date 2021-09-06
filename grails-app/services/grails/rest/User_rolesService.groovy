package demo.api

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
        def urJson = request.JSON
        def urInstance = new User_roles(urJson)

        urInstance = urInstance.save()

        return urInstance
    }

    def update(def params, def request) {
        def urJson = request.JSON
        def urInstance = User_roles.get(params?.id)
        urInstance.properties = urJson

        urInstance = urInstance.merge()

        return urInstance
    }

    def delete(def params, def request) {
        def urInstance = User_roles.get(params?.id)
        urInstance = urInstance.delete()

        return urInstance
    }
}

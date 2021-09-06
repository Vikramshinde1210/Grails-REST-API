package demo.api

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class Industryproject_departmentService {

    def list(def params, def request) {
        return Industryproject_department.findAll()
    }

    def single(def params, def request) {
        return Industryproject_department.findById(params?.id)
    }

    def save(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = new Industryproject_department(ipJson)

        ipInstance = ipInstance.save()

        return ipInstance
    }

    def update(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = Industryproject_department.get(params?.id)
        ipInstance.properties = ipJson

        ipInstance = ipInstance.merge()

        return ipInstance
    }

    def delete(def params, def request) {
        def ipInstance = Industryproject_department.get(params?.id)
        ipInstance = ipInstance.delete()

        return ipInstance
    }
}

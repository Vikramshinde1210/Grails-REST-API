package grails.rest

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
        def Industryproject_departmentJson = request.JSON
        def Industryproject_departmentInstance = new Industryproject_department(Industryproject_departmentJson)

        Industryproject_departmentInstance = Industryproject_departmentInstance.save()

        return Industryproject_departmentInstance
    }

    def update(def params, def request) {
        def Industryproject_departmentJson = request.JSON
        def Industryproject_departmentInstance = Industryproject_department.get(params?.id)
        Industryproject_departmentInstance.properties = Industryproject_departmentJson

        Industryproject_departmentInstance = Industryproject_departmentInstance.merge()

        return Industryproject_departmentInstance
    }

    def delete(def params, def request) {
        def Industryproject_departmentInstance = Industryproject_department.get(params?.id)
        Industryproject_departmentInstance = Industryproject_departmentInstance.delete()

        return Industryproject_departmentInstance
    }
}

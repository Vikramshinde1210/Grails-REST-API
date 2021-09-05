package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class DepartmentService {

    def list(def params, def request) {
        return Department.findAll()  
    }

    def single(def params, def request) {
        return Department.findById(params?.id)
    }

    def save(def params, def request) {
        def DepartmentJson = request.JSON
        def DepartmentInstance = new Department(DepartmentJson)

        DepartmentInstance = DepartmentInstance.save()

        return DepartmentInstance
    }

    def update(def params, def request) {
        def DepartmentJson = request.JSON
        def DepartmentInstance = Department.get(params?.id)
        DepartmentInstance.properties = DepartmentJson

        DepartmentInstance = DepartmentInstance.merge()

        return DepartmentInstance
    }

    def delete(def params, def request) {
        def DepartmentInstance = Department.get(params?.id)
        DepartmentInstance = DepartmentInstance.delete()

        return DepartmentInstance
    }
}
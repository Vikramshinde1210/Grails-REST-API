package demo.api

import grails.gorm.transactions.Transactional
import groovy.sql.Sql 

@Transactional
class IndustryprojectService {

    def list(def params, def request) {
        return Industryproject.findAll()
    }

    def single(def params, def request) {
        return Industryproject.findById(params?.id)
    }

    def save(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = new Industryproject(ipJson)

        ipInstance = ipInstance.save()

        return ipInstance
    }

    def update(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = Industryproject.get(params?.id)
        ipInstance.properties = ipJson

        ipInstance = ipInstance.merge()

        return ipInstance
    }

    def delete(def params, def request) {
        def ipInstance = Industryproject.get(params?.id)
        ipInstance = ipInstance.delete()

        return ipInstance
    }
}

package grails.rest

import grails.gorm.transactions.Transactional
import groovy.sql.Sql
@Transactional
class Industryproject_domainService {

    def list(def params, def request) {
        return Industryproject_domain.findAll()
    }

    def single(def params, def request) {
        return Industryproject_domain.findById(params?.id)
    }

    def save(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = new Industryproject_domain(ipJson)

        ipInstance = ipInstance.save()

        return ipInstance
    }

    def update(def params, def request) {
        def ipJson = request.JSON
        def ipInstance = Industryproject_domain.get(params?.id)
        ipInstance.properties = ipJson

        ipInstance = ipInstance.merge()

        return ipInstance
    }

    def delete(def params, def request) {
        def ipInstance = Industryproject_domain.get(params?.id)
        ipInstance = ipInstance.delete()

        return ipInstance
    }
}

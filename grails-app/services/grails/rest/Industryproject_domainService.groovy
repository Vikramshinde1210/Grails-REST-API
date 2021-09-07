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
        def Industryproject_domainJson = request.JSON
        def Industryproject_domainInstance = new Industryproject_domain(Industryproject_domainJson)

        Industryproject_domainInstance = Industryproject_domainInstance.save()

        return Industryproject_domainInstance
    }

    def update(def params, def request) {
        def Industryproject_domainJson = request.JSON
        def Industryproject_domainInstance = Industryproject_domain.get(params?.id)
        Industryproject_domainInstance.properties = Industryproject_domainJson

        Industryproject_domainInstance = Industryproject_domainInstance.merge()

        return Industryproject_domainInstance
    }

    def delete(def params, def request) {
        def Industryproject_domainInstance = Industryproject_domain.get(params?.id)
        Industryproject_domainInstance = Industryproject_domainInstance.delete()

        return Industryproject_domainInstance
    }
}

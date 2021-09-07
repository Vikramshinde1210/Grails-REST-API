package grails.rest

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
        def IndustryprojectJson = request.JSON
        def IndustryprojectInstance = new Industryproject(IndustryprojectJson)

        IndustryprojectInstance = IndustryprojectInstance.save()

        return IndustryprojectInstance
    }

    def update(def params, def request) {
        def IndustryprojectJson = request.JSON
        def IndustryprojectInstance = Industryproject.get(params?.id)
        IndustryprojectInstance.properties = IndustryprojectJson

        IndustryprojectInstance = IndustryprojectInstance.merge()

        return IndustryprojectInstance
    }

    def delete(def params, def request) {
        def IndustryprojectInstance = Industryproject.get(params?.id)
        IndustryprojectInstance = IndustryprojectInstance.delete()

        return IndustryprojectInstance
    }
}

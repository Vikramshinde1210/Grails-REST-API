package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class CompanylistService {

    def list(def params, def request) {
        return Companylist.findAll()  
    }

    def single(def params, def request) {
        return Companylist.findById(params?.id)
    }

    def save(def params, def request) {
        def CompanylistJson = request.JSON
        def CompanylistInstance = new Companylist(CompanylistJson)

        CompanylistInstance = CompanylistInstance.save()

        return CompanylistInstance
    }

    def update(def params, def request) {
        def CompanylistJson = request.JSON
        def CompanylistInstance = Companylist.get(params?.id)
        CompanylistInstance.properties = CompanylistJson

        CompanylistInstance = CompanylistInstance.merge()

        return CompanylistInstance
    }

    def delete(def params, def request) {
        def CompanylistInstance = Companylist.get(params?.id)
        CompanylistInstance = CompanylistInstance.delete()

        return CompanylistInstance
    }
}
package grails.rest

import grails.rest.*
import grails.converters.*

class Industryproject_domainController extends RestfulController{
	def Industryproject_domainService
    static responseFormats = ['json', 'xml']
    Industryproject_domainController() {
        super(Industryproject_domain)
    }

    @Override
    def index() {
        respond Industryproject_domainService.list(params,request)
    }

    @Override
    def show() {
        respond Industryproject_domainService.single(params,request)
    }

    @Override
    def save() {
        def Industryproject_domain = Industryproject_domainService.save(params,request)
        respond Industryproject_domain
    }

    @Override
    def update() {
        def Industryproject_domain = Industryproject_domainService.update(params,request)
        respond Industryproject_domain
    }

    @Override
    def delete() {
        def Industryproject_domain = Industryproject_domainService.delete(params,request)
        respond Industryproject_domain
    }
}

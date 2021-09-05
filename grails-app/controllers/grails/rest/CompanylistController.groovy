package grails.rest
import grails.rest.*
import grails.converters.*

class CompanylistController extends RestfulController {
    def CompanylistService
	static responseFormats = ['json', 'xml']

    CompanylistController() { 
        super(Companylist)
    }

    @Override
    def index() {
        respond CompanylistService.list(params,request)
    }

    @Override
    def show() {
        respond CompanylistService.single(params,request)
    }

    @Override
    def save() {
        def Companylist = CompanylistService.save(params,request)
        respond Companylist
    }

    @Override
    def update() {
        def Companylist = CompanylistService.update(params,request)
        respond Companylist
    }

    @Override
    def delete() {
        def Companylist = CompanylistService.delete(params,request)
        respond Companylist
    }
}
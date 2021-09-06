package grails.rest



import grails.rest.*
import grails.converters.*

class ProjectDomainController extends RestfulController{
	def projectDomainService
	static responseFormats = ['json', 'xml']
	
   ProjectDomainController() { 
        super(ProjectDomain)
    }

    @Override
    def index() {
        respond projectDomainService.list(params,request)
    }

    @Override
    def show() {
        respond projectDomainService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectDomainService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectDomainService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectDomainService.delete(params,request)
        respond roles
    }
}

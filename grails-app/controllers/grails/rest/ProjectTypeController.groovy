package grails.rest


import grails.rest.*
import grails.converters.*

class ProjectTypeController extends RestfulController{
	def projectTypeService
	static responseFormats = ['json', 'xml']
	
    ProjectTypeController() { 
        super(ProjectType)
    }

    @Override
    def index() {
        respond projectTypeService.list(params,request)
    }

    @Override   
    def show() {
        respond projectTypeService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectTypeService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectTypeService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectTypeService.delete(params,request)
        respond roles
    }
}
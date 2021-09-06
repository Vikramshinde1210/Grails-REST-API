package grails.rest


import grails.rest.*
import grails.converters.*

class ProjectTaskController extends RestfulController {
	def projectTaskService
	static responseFormats = ['json', 'xml']
	
   ProjectTaskController() { 
        super(ProjectTask)
    }

    @Override
    def index() {
        respond projectTaskService.list(params,request)
    }

    @Override
    def show() {
        respond projectTaskService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectTaskService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectTaskService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectTaskService.delete(params,request)
        respond roles
    }
}

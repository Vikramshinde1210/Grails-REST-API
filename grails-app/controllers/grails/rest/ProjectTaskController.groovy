package grails.rest


import grails.rest.*
import grails.converters.*

class ProjectTaskController extends RestfulController {
	def projectTaskService
    def authService
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
        Persons authAccount = authService.checkAuth(request)
        if (authAccount)
            respond projectTaskService.single(params,request)
        else
            render (status:  404)
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

    def getStatus(){
        Persons authAccount = authService.checkAuth(request)
        if (authAccount)
            respond projectTaskService.getStatusById(params,request)
        else
            render (status:  404)
    }
}

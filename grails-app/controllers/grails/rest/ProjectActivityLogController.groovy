package grails.rest


import grails.rest.*
import grails.converters.*

class ProjectActivityLogController extends RestfulController {
def  projectActivityLogService
	static responseFormats = ['json', 'xml']
	
   ProjectActivityLogController() { 
        super(ProjectActivityLog)
    }

    @Override
    def index() {
        respond projectActivityLogService.list(params,request)
    }

    @Override
    def show() {
        respond projectActivityLogService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectActivityLogService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectActivityLogService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectActivityLogService.delete(params,request)
        respond roles
    }
}

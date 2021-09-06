package grails.rest



import grails.rest.*
import grails.converters.*

class ProjectGroupController extends RestfulController {
def projectGroupService
	static responseFormats = ['json', 'xml']
	
  ProjectGroupController() { 
        super(ProjectGroup)
    }

    @Override
    def index() {
        respond projectGroupService.list(params,request)
    }

    @Override
    def show() {
        respond projectGroupService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectGroupService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectGroupService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectGroupService.delete(params,request)
        respond roles
    }
}

package grails.rest

import grails.rest.*
import grails.converters.*

class ProjectTaskLogsController extends RestfulController{
	def projectTaskLogsService
	static responseFormats = ['json', 'xml']
	
   ProjectTaskLogsController() { 
        super(ProjectTaskLogs)
    }

    @Override
    def index() {
        respond projectTaskLogsService.list(params,request)
    }

    @Override
    def show() {
        respond projectTaskLogsService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = projectTaskLogsService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = projectTaskLogsService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = projectTaskLogsService.delete(params,request)
        respond roles
    }
}


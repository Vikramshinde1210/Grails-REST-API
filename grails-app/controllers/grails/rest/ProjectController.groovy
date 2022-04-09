package grails.rest


import grails.rest.*
import grails.converters.*

class ProjectController extends RestfulController {
    static responseFormats = ['json', 'xml']
    def projectService
    def authService

    ProjectController() {
        super(ProjectGroup)
    }

    @Override
    def index() {
        Persons authAccount = authService.checkAuth(request)
        if (authAccount) {
            respond projectService.getProjectByPersonId(params, request)
        }
    }
}

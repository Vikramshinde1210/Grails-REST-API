package grails.rest


import grails.rest.*
import grails.converters.*

class RolesController extends RestfulController{
    def rolesService
	static responseFormats = ['json', 'xml']
	
    RolesController() { 
        super(Roles)
    }

    @Override
    def index() {
        respond rolesService.list(params,request)
    }

    @Override
    def show() {
        respond rolesService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = rolesService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = rolesService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = rolesService.delete(params,request)
        respond roles
    }
}

package grails.rest


import grails.rest.*
import grails.converters.*

class User_rolesController extends RestfulController {
	def User_rolesService
    static responseFormats = ['json', 'xml']
    User_rolesController() {
        super(User_roles)
    }

    @Override
    def index() {
        respond User_rolesService.list(params,request)
    }

    @Override
    def show() {
        respond User_rolesService.single(params,request)
    }

    @Override
    def save() {
        def User_roles = User_rolesService.save(params,request)
        respond User_roles
    }

    @Override
    def update() {
        def User_roles = User_rolesService.update(params,request)
        respond User_roles
    }

    @Override
    def delete() {
        def User_roles = User_rolesService.delete(params,request)
        respond User_roles
    }
}

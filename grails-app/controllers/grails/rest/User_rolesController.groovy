package demo.api


import grails.rest.*
import grails.converters.*

class User_rolesController extends RestfulController {
	def urc
    static responseFormats = ['json', 'xml']
    User_rolesController() {
        super(User_roles)
    }

    @Override
    def index() {
        respond urc.list(params,request)
    }

    @Override
    def show() {
        respond urc.single(params,request)
    }

    @Override
    def save() {
        def temp = urc.save(params,request)
        respond temp
    }

    @Override
    def update() {
        def temp = urc.update(params,request)
        respond temp
    }

    @Override
    def delete() {
        def temp = urc.delete(params,request)
        respond temp
    }
}

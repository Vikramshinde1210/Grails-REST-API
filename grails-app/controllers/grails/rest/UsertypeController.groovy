package grails.rest
import grails.rest.*
import grails.converters.*

class UsertypeController extends RestfulController {
    def UsertypeService
	static responseFormats = ['json', 'xml']

    UsertypeController() { 
        super(Usertype)
    }

    @Override
    def index() {
        respond UsertypeService.list(params,request)
    }

    @Override
    def show() {
        respond UsertypeService.single(params,request)
    }

    @Override
    def save() {
        def usertype = UsertypeService.save(params,request)
        respond Usertype
    }

    @Override
    def update() {
        def Usertype = UsertypeService.update(params,request)
        respond Usertype
    }

    @Override
    def delete() {
        def Usertype = UsertypeService.delete(params,request)
        respond Usertype
    }
}
package grails.rest


import grails.rest.*
import grails.converters.*

class StatusController extends RestfulController{
    def statusService
	static responseFormats = ['json', 'xml']
	
    StatusController() { 
        super(Status)
    }

    @Override
    def index() {
        respond statusService.list(params,request)
    }

    @Override
    def show() {
        respond statusService.single(params,request)
    }
    
    @Override
    def save() {
        def status = statusService.save(params,request)
        respond status
    }

    @Override
    def update() {
        def status = statusService.update(params,request)
        respond status
    }

    @Override
    def delete() {
        def status = statusService.delete(params,request)
        respond status
    }
}

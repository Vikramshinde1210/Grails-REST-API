package grails.rest


import grails.rest.*
import grails.converters.*

class SupportController extends RestfulController{
    def supportService
	static responseFormats = ['json', 'xml']
	
    SupportController() { 
        super(Support)
    }

    @Override
    def index() {
        respond supportService.list(params,request)
    }

    @Override
    def show() {
        respond supportService.single(params,request)
    }
    
    @Override
    def save() {
        def support = supportService.save(params,request)
        respond support
    }

    @Override
    def update() {
        def support = supportService.update(params,request)
        respond support
    }

    @Override
    def delete() {
        def support = supportService.delete(params,request)
        respond support
    }
}

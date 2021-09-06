package grails.rest


import grails.rest.*
import grails.converters.*

class SupportReasonController extends RestfulController{
	def supportReasonService
	static responseFormats = ['json', 'xml']
	
    SupportReasonController() { 
        super(SupportReason)
    }

    @Override
    def index() {
        respond supportReasonService.list(params,request)
    }

    @Override
    def show() {
        respond supportReasonService.single(params,request)
    }
    
    @Override
    def save() {
        def roles = supportReasonService.save(params,request)
        respond roles
    }

    @Override
    def update() {
        def roles = supportReasonService.update(params,request)
        respond roles
    }

    @Override
    def delete() {
        def roles = supportReasonService.delete(params,request)
        respond roles
    }
}

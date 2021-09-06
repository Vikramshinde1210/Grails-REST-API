package demo.api


import grails.rest.*
import grails.converters.*

class IndustryprojectController extends RestfulController{
	def ipc
    static responseFormats = ['json', 'xml']
    IndustryprojectController() {
        super(Industryproject)
    }

    @Override
    def index() {
        respond ipc.list(params,request)
    }

    @Override
    def show() {
        respond ipc.single(params,request)
    }

    @Override
    def save() {
        def temp = ipc.save(params,request)
        respond temp
    }

    @Override
    def update() {
        def temp = ipc.update(params,request)
        respond temp
    }

    @Override
    def delete() {
        def temp = ipc.delete(params,request)
        respond temp
    }
}

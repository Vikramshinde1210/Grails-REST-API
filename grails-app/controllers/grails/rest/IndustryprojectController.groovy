package grails.rest


import grails.rest.*
import grails.converters.*

class IndustryprojectController extends RestfulController{
	def IndustryprojectService
    static responseFormats = ['json', 'xml']
    IndustryprojectController() {
        super(Industryproject)
    }

    @Override
    def index() {
        respond IndustryprojectService.list(params,request)
    }

    @Override
    def show() {
        respond IndustryprojectService.single(params,request)
    }

    @Override
    def save() {
        def Industryproject = IndustryprojectService.save(params,request)
        respond Industryproject
    }

    @Override
    def update() {
        def Industryproject = IndustryprojectService.update(params,request)
        respond Industryproject
    }

    @Override
    def delete() {
        def Industryproject = IndustryprojectService.delete(params,request)
        respond Industryproject
    }
}

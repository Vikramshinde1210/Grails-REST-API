package grails.rest


import grails.rest.*
import grails.converters.*

class Industryproject_departmentController extends RestfulController {
	def Industryproject_departmentService
    static responseFormats = ['json', 'xml']
    Industryproject_departmentController() {
        super(Industryproject_department)
    }

    @Override
    def index() {
        respond Industryproject_departmentService.list(params,request)
    }

    @Override
    def show() {
        respond Industryproject_departmentService.single(params,request)
    }

    @Override
    def save() {
        def Industryproject_department = Industryproject_departmentService.save(params,request)
        respond Industryproject_department
    }

    @Override
    def update() {
        def Industryproject_department = Industryproject_departmentService.update(params,request)
        respond Industryproject_department
    }

    @Override
    def delete() {
        def Industryproject_department = Industryproject_departmentService.delete(params,request)
        respond Industryproject_department
    }
}

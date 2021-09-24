package grails.rest
import grails.rest.*
import grails.converters.*

class DepartmentController extends RestfulController {
    def DepartmentService
	static responseFormats = ['json', 'xml']

    DepartmentController() { 
        super(Department)
    }

    @Override
    def index() {
        respond DepartmentService.list(params,request)
    }

    @Override
    def show() {
        respond DepartmentService.fetch(params,request)
    }

    @Override
    def save() {
        def Department = DepartmentService.save(params,request)
        respond Department
    }

    @Override
    def update() {
        def Department = DepartmentService.update(params,request)
        respond Department
    }

    @Override
    def delete() {
        def Department = DepartmentService.delete(params,request)
        respond Department
    }
}
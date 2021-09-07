package grails.rest


import grails.rest.*
import grails.converters.*

class Industryproject_departmentController extends RestfulController {
	def ip
    static responseFormats = ['json', 'xml']
    Industryproject_departmentController() {
        super(Industryproject_department)
    }

    @Override
    def index() {
        respond ip.list(params,request)
    }

    @Override
    def show() {
        respond ip.single(params,request)
    }

    @Override
    def save() {
        def ftr = ip.save(params,request)
        respond ftr
    }

    @Override
    def update() {
        def ftr = ip.update(params,request)
        respond ftr
    }

    @Override
    def delete() {
        def ftr = ip.delete(params,request)
        respond ftr
    }
}

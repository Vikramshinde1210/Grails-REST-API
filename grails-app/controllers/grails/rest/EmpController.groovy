import grails.rest.*
import grails.converters.*

class EmpController extends RestfulController {
    def EmpService
    static responseFormats = ['json', 'xml']
    EmpController() {
        super(Emp)
    }

    @Override
    def index() {
        respond EmpService.list(params,request)
    }

    @Override
    def show() {
        respond EmpService.single(params,request)
    }

    @Override
    def save() {
        def city = EmpService.save(params,request)
        respond city
    }

    @Override
    def update() {
        def city = EmpService.update(params,request)
        respond city
    }

    @Override
    def delete() {
        def city = EmpService.delete(params,request)
        respond city
    }
}
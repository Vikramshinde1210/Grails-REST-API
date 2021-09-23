package grails.rest
import grails.rest.*
import grails.converters.*

class CollegeController extends RestfulController {
    def CollegeService
	static responseFormats = ['json', 'xml']

    CollegeController() { 
        super(College)
    }

    @Override
    def index() {
        respond CollegeService.list(params,request)
    }

    @Override
    def show() {
        respond CollegeService.single(params,request)
    }

    @Override
    def save() {
        def College = CollegeService.save(params,request)
        respond College
    }

    @Override
    def update() {
        def College = CollegeService.update(params,request)
        respond College
    }

    @Override
    def delete() {
        def College = CollegeService.delete(params,request)
        respond College
    }

}
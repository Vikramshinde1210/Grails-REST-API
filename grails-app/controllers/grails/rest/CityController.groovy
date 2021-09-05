package grails.rest
import grails.rest.*
import grails.converters.*

class CityController extends RestfulController {
    def CityService
	static responseFormats = ['json', 'xml']

    CityController() { 
        super(City)
    }

    @Override
    def index() {
        respond CityService.list(params,request)
    }

    @Override
    def show() {
        respond CityService.single(params,request)
    }

    @Override
    def save() {
        def City = CityService.save(params,request)
        respond City
    }

    @Override
    def update() {
        def City = CityService.update(params,request)
        respond City
    }

    @Override
    def delete() {
        def City = CityService.delete(params,request)
        respond City
    }
}
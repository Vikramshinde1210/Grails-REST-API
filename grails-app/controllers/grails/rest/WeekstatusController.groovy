package grails.rest
import grails.rest.*
import grails.converters.*

class WeekstatusController extends RestfulController {
    def WeekstatusService
	static responseFormats = ['json', 'xml']

    WeekstatusController() { 
        super(Weekstatus)
    }

    @Override
    def index() {
        respond WeekstatusService.list(params,request)
    }

    @Override
    def show() {
        respond WeekstatusService.single(params,request)
    }

    @Override
    def save() {
        def Weekstatus = WeekstatusService.save(params,request)
        respond Weekstatus
    }

    @Override
    def update() {
        def Weekstatus = WeekstatusService.update(params,request)
        respond Weekstatus
    }

    @Override
    def delete() {
        def Weekstatus = WeekstatusService.delete(params,request)
        respond Weekstatus
    }
}
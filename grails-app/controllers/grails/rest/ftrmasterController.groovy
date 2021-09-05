package grails.rest
import grails.rest.*
import grails.converters.*

class FtrmasterController extends RestfulController {
    def FtrmasterService
	static responseFormats = ['json', 'xml']

    FtrmasterController() { 
        super(Ftrmaster)
    }

    @Override
    def index() {
        respond FtrmasterService.list(params,request)
    }

    @Override
    def show() {
        respond FtrmasterService.single(params,request)
    }

    @Override
    def save() {
        def Ftrmaster = FtrmasterService.save(params,request)
        respond Ftrmaster
    }

    @Override
    def update() {
        def Ftrmaster = FtrmasterService.update(params,request)
        respond Ftrmaster
    }

    @Override
    def delete() {
        def Ftrmaster = FtrmasterService.delete(params,request)
        respond Ftrmaster
    }
}
package grails.rest


import grails.rest.*
import grails.converters.*

class ModuleController extends RestfulController {
    def ModuleService
    static responseFormats = ['json', 'xml']
    ModuleController() {
        super(Module)
    }
    @Override
    def index() {
        respond ModuleService.list(params,request)
    }

    @Override
    def show() {
        respond ModuleService.single(params,request)
    }

    @Override
    def save() {
        def Module = ModuleService.save(params,request)
        respond Module
    }

    @Override
    def update() {
        def Module = ModuleService.update(params,request)
        respond Module
    }

    @Override
    def delete() {
        def Module = ModuleService.delete(params,request)
        respond Module
    }
}

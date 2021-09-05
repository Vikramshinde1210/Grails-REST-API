package grails.rest
import grails.rest.*
import grails.converters.*

class Learner_project_regController extends RestfulController {
    def Learner_project_regService
	static responseFormats = ['json', 'xml']

    Learner_project_regController() { 
        super(Learner_project_reg)
    }

    @Override
    def index() {
        respond Learner_project_regService.list(params,request)
    }

    @Override
    def show() {
        respond Learner_project_regService.single(params,request)
    }

    @Override
    def save() {
        def Learner_project_reg = Learner_project_regService.save(params,request)
        respond Learner_project_reg
    }

    @Override
    def update() {
        def Learner_project_reg = Learner_project_regService.update(params,request)
        respond Learner_project_reg
    }

    @Override
    def delete() {
        def Learner_project_reg = Learner_project_regService.delete(params,request)
        respond Learner_project_reg
    }
}
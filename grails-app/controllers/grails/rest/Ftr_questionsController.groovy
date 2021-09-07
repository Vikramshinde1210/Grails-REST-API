package grails.rest


import grails.rest.*
import grails.converters.*

class Ftr_questionsController extends RestfulController {

	
    def Ftr_questionsService
    static responseFormats = ['json', 'xml']
    Ftr_questionsController() {
        super(Ftr_questions)
    }

    @Override
    def index() {
        respond Ftr_questionsService.list(params,request)
    }

    @Override
    def show() {
        respond Ftr_questionsService.single(params,request)
    }

    @Override
    def save() {
        def Ftr_questions = Ftr_questionsService.save(params,request)
        respond Ftr_questions
    }

    @Override
    def update() {
        def Ftr_questions = Ftr_questionsService.update(params,request)
        respond Ftr_questions
    }

    @Override
    def delete() {
        def Ftr_questions = Ftr_questionsService.delete(params,request)
        respond Ftr_questions
    }
}


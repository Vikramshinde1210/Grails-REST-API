package grails.rest


import grails.rest.*
import grails.converters.*

class Ftr_questionsController extends RestfulController {

	
    def ftr_Ques
    static responseFormats = ['json', 'xml']
    Ftr_questionsController() {
        super(Ftr_questions)
    }

    @Override
    def index() {
        respond ftr_Ques.list(params,request)
    }

    @Override
    def show() {
        respond ftr_Ques.single(params,request)
    }

    @Override
    def save() {
        def ft = ftr_Ques.save(params,request)
        respond ft
    }

    @Override
    def update() {
        def ft = ftr_Ques.update(params,request)
        respond ft
    }

    @Override
    def delete() {
        def ft = ftr_Ques.delete(params,request)
        respond ft
    }
}


package grails.rest


import grails.rest.*
import grails.converters.*

class Ftr_question_ftr_groupController extends RestfulController{
	
	
    def ftr
    static responseFormats = ['json', 'xml']
    Ftr_question_ftr_groupController() {
        super(Ftr_question_ftr_group)
    }

    @Override
    def index() {
        respond ftr.list(params,request)
    }

    @Override
    def show() {
        respond ftr.single(params,request)
    }

    @Override
    def save() {
        def ftr = ftr.save(params,request)
        respond ftr
    }

    @Override
    def update() {
        def ftr = ftr.update(params,request)
        respond ftr
    }

    @Override
    def delete() {
        def ftr = ftr.delete(params,request)
        respond ftr
    }
}

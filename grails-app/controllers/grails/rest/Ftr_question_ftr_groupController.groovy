package grails.rest


import grails.rest.*
import grails.converters.*

class Ftr_question_ftr_groupController extends RestfulController{
	
	
    def Ftr_question_ftr_groupService
    static responseFormats = ['json', 'xml']
    Ftr_question_ftr_groupController() {
        super(Ftr_question_ftr_group)
    }

    @Override
    def index() {
        respond Ftr_question_ftr_groupService.list(params,request)
    }

    @Override
    def show() {
        respond Ftr_question_ftr_groupService.single(params,request)
    }

    @Override
    def save() {
        def Ftr_question_ftr_group = Ftr_question_ftr_groupService.save(params,request)
        respond Ftr_question_ftr_group
    }

    @Override
    def update() {
        def Ftr_question_ftr_group = Ftr_question_ftr_groupService.update(params,request)
        respond Ftr_question_ftr_group
    }

    @Override
    def delete() {
        def Ftr_question_ftr_group = Ftr_question_ftr_groupService.delete(params,request)
        respond Ftr_question_ftr_group
    }
}

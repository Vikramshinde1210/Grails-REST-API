package grails.rest


import grails.rest.*
import grails.converters.*

class LearnerController extends RestfulController {
    def LearnerService
    static responseFormats = ['json', 'xml']
    LearnerController() {
        super(Learner)
    }
    @Override
    def index() {
        respond LearnerService.list(params,request)
    }

    @Override
    def show() {
        respond LearnerService.single(params,request)
    }

    @Override
    def save() {
        def Learner = LearnerService.save(params,request)
        respond Learner
    }

    @Override
    def update() {
        def Learner = LearnerService.update(params,request)
        respond Learner
    }

    @Override
    def delete() {
        def Learner = LearnerService.delete(params,request)
        respond Learner
    }
}

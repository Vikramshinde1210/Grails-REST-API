package demo.api


import grails.rest.*
import grails.converters.*

class Industryproject_domainController extends RestfulController{
	def ipd
    static responseFormats = ['json', 'xml']
    Industryproject_domainController() {
        super(Industryproject_domain)
    }

    @Override
    def index() {
        respond ipd.list(params,request)
    }

    @Override
    def show() {
        respond ipd.single(params,request)
    }

    @Override
    def save() {
        def temp = ipd.save(params,request)
        respond temp
    }

    @Override
    def update() {
        def temp = ipd.update(params,request)
        respond temp
    }

    @Override
    def delete() {
        def temp = ipd.delete(params,request)
        respond temp
    }
}

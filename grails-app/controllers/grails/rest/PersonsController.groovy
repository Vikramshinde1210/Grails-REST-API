package grails.rest

import grails.rest.*
import grails.converters.*

import java.util.function.Consumer

class PersonsController extends RestfulController {
    def PersonsService
    def AuthService
    static responseFormats = ['json', 'xml']
    PersonsController() {
        super(Persons)
    }
    @Override
    def index() {
        respond PersonsService.list(params,request)
    }

    @Override
    def show() {
        respond PersonsService.single(params,request)
    }

    @Override
    def save() {
        def Persons = PersonsService.save(params,request)
        respond Persons
    }

    @Override
    def update() {
        def Persons = PersonsService.update(params,request)
        respond Persons
    }

    @Override
    def delete() {
        def Persons = PersonsService.delete(params,request)
        respond Persons
    }

    def guide() {
        respond PersonsService.guideList(3)
    }

    def signin(){
        def jsonRequest = request.JSON
        Persons person = Persons.findByUsername(jsonRequest["username"])
        if(person && person.isValidPassword(jsonRequest['password'])){
            person.addRole(Roles.findById(person.roleid).name)
            HashMap hm = new HashMap()
            hm.put("Person_Id",person.id)
            hm.put("username",person.username)
            hm.put("FullName",person.fullname)
            hm.put("Mobile",person.mobile)
            hm.put("grno_EmpCode",person.grno_empcode)
            hm.put("email",person.email)
            hm.put("department",person.department)
            hm.put("college",person.college)
            hm.put("roles",person.roles)
            hm.put("accessToken",AuthService.genToken(person.id))
            render hm as JSON
        }else{
            respond null
        }
    }
}

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
        /*
        * Expected Headers for Authentication
        *
        * 1)x-access-token
        * 2)id
        *
        * */
        def accessToken = request.getHeader("x-access-token")
        def id = request.getHeader("id")
        if(accessToken){
            Persons authAccount = AuthService.checkAuth(accessToken,id)
            if(authAccount){
                Persons requestedPerson = PersonsService.single(params,request)
                /*
                * roleid:
                *
                * 3: Guide
                * 4: Hod
                * 5: Director
                * 6: Management
                * 7: Coordinator
                *
                * Only respond if:
                * 1) User requesting his own data
                * 2) User requesting is Director or Management
                * 3) User requesting student data with roleid as given above
                * */
                if(authAccount.id == params?.id as Integer || authAccount.roleid == 5 || authAccount.roleid == 6 ||(authAccount.roleid > 2 && authAccount.roleid <= 7 && (requestedPerson?.roleid == 2 || requestedPerson?.roleid == 1)) ){
                    render requestedPerson.toJSON()
                    return
                }
            }
        }
        render(status:404)
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
        println(person.username)
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

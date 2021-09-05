package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class PersonsService {

    def list(def params, def request) {
        return Persons.findAll()  
    }

    def single(def params, def request) {
        return Persons.findById(params?.id)
    }

    def save(def params, def request) {
        def PersonsJson = request.JSON
        def PersonsInstance = new Persons(PersonsJson)

        PersonsInstance = PersonsInstance.save()

        return PersonsInstance
    }

    def update(def params, def request) {
        def PersonsJson = request.JSON
        def PersonsInstance = Persons.get(params?.id)
        PersonsInstance.properties = PersonsJson

        PersonsInstance = PersonsInstance.merge()

        return PersonsInstance
    }

    def delete(def params, def request) {
        def PersonsInstance = Persons.get(params?.id)
        PersonsInstance = PersonsInstance.delete()

        return PersonsInstance
    }
}
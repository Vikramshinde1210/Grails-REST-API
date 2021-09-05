package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class UsertypeService {

    def list(def params, def request) {
        return Usertype.findAll()  
    }

    def single(def params, def request) {
        return Usertype.findById(params?.id)
    }

    def save(def params, def request) {
        def UsertypeJson = request.JSON
        def UsertypeInstance = new Usertype(UsertypeJson)

        UsertypeInstance = UsertypeInstance.save()

        return UsertypeInstance
    }

    def update(def params, def request) {
        def UsertypeJson = request.JSON
        def UsertypeInstance = Usertype.get(params?.id)
        UsertypeInstance.properties = UsertypeJson

        UsertypeInstance = UsertypeInstance.merge()

        return UsertypeInstance
    }

    def delete(def params, def request) {
        def UsertypeInstance = Usertype.get(params?.id)
        UsertypeInstance = UsertypeInstance.delete()

        return UsertypeInstance
    }
}
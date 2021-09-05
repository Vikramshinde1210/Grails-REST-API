package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class CityService {

    def list(def params, def request) {
        return City.findAll()  
    }

    def single(def params, def request) {
        return City.findById(params?.id)
    }

    def save(def params, def request) {
        def CityJson = request.JSON
        def CityInstance = new City(CityJson)

        CityInstance = CityInstance.save()

        return CityInstance
    }

    def update(def params, def request) {
        def CityJson = request.JSON
        def CityInstance = City.get(params?.id)
        CityInstance.properties = CityJson

        CityInstance = CityInstance.merge()

        return CityInstance
    }

    def delete(def params, def request) {
        def CityInstance = City.get(params?.id)
        CityInstance = CityInstance.delete()

        return CityInstance
    }
}
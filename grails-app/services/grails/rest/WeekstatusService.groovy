package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class WeekstatusService {

    def list(def params, def request) {
        return Weekstatus.findAll()  
    }

    def single(def params, def request) {
        return Weekstatus.findById(params?.id)
    }

    def save(def params, def request) {
        def WeekstatusJson = request.JSON
        def WeekstatusInstance = new Weekstatus(WeekstatusJson)

        WeekstatusInstance = WeekstatusInstance.save()

        return WeekstatusInstance
    }

    def update(def params, def request) {
        def WeekstatusJson = request.JSON
        def WeekstatusInstance = Weekstatus.get(params?.id)
        WeekstatusInstance.properties = WeekstatusJson

        WeekstatusInstance = WeekstatusInstance.merge()

        return WeekstatusInstance
    }

    def delete(def params, def request) {
        def WeekstatusInstance = Weekstatus.get(params?.id)
        WeekstatusInstance = WeekstatusInstance.delete()

        return WeekstatusInstance
    }
}
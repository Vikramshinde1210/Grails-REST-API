package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class FtrmasterService {

    def list(def params, def request) {
        return Ftrmaster.findAll()  
    }

    def single(def params, def request) {
        return Ftrmaster.findById(params?.id)
    }

    def save(def params, def request) {
        def FtrmasterJson = request.JSON
        def FtrmasterInstance = new Ftrmaster(FtrmasterJson)

        FtrmasterInstance = FtrmasterInstance.save()

        return FtrmasterInstance
    }

    def update(def params, def request) {
        def FtrmasterJson = request.JSON
        def FtrmasterInstance = Ftrmaster.get(params?.id)
        FtrmasterInstance.properties = FtrmasterJson

        FtrmasterInstance = FtrmasterInstance.merge()

        return FtrmasterInstance
    }

    def delete(def params, def request) {
        def FtrmasterInstance = Ftrmaster.get(params?.id)
        FtrmasterInstance = FtrmasterInstance.delete()

        return FtrmasterInstance
    }
}
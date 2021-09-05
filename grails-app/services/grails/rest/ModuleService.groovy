package grails.rest

import grails.gorm.transactions.Transactional

@Transactional
class ModuleService {

    def list(def params, def request) {
        return Module.findAll()  
    }

    def single(def params, def request) {
        return Module.findById(params?.id)
    }

    def save(def params, def request) {
        def ModuleJson = request.JSON
        def ModuleInstance = new Module(ModuleJson)

        ModuleInstance = ModuleInstance.save()

        return ModuleInstance
    }

    def update(def params, def request) {
        def ModuleJson = request.JSON
        def ModuleInstance = Module.get(params?.id)
        ModuleInstance.properties = ModuleJson

        ModuleInstance = ModuleInstance.merge()

        return ModuleInstance
    }

    def delete(def params, def request) {
        def ModuleInstance = Module.get(params?.id)
        ModuleInstance = ModuleInstance.delete()

        return ModuleInstance
    }
}
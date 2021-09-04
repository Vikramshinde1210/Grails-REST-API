

import grails.gorm.transactions.Transactional
import groovy.sql.Sql 

@Transactional
class EmpService {

    def list(def params, def request) {
        return Emp.findAll()
    }

    def single(def params, def request) {
        return Emp.findById(params?.id)
    }

    def save(def params, def request) {
        def EmpJson = request.JSON
        def EmpInstance = new Emp(EmpJson)

        EmpInstance = EmpInstance.save()

        return EmpInstance
    }

    def update(def params, def request) {
        def EmpJson = request.JSON
        def EmpInstance = Emp.get(params?.id)
        EmpInstance.properties = EmpJson

        EmpInstance = EmpInstance.merge()

        return EmpInstance
    }

    def delete(def params, def request) {
        def EmpInstance = Emp.get(params?.id)
        EmpInstance = EmpInstance.delete()

        return EmpInstance
    }
}

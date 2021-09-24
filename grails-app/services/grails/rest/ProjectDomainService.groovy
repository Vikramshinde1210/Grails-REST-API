package grails.rest
import groovy.sql.Sql
import grails.gorm.transactions.Transactional

@Transactional
class ProjectDomainService {

    def dataSource;
      def fetch(def params, def request){
	    String query = "select * from projectdomain where department_id="+params.id;
            def sql = new Sql(dataSource);
            def employeeList = sql.rows(query);
            return employeeList
    }

    def list(def params, def request) {
        return ProjectDomain.findAll()  
    }

    def single(def params, def request) {
        return ProjectDomain.findById(params?.id)
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectDomain(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectDomain.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectDomain.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }
}

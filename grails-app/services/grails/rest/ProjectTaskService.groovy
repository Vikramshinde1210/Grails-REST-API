package grails.rest
import grails.gorm.transactions.Transactional
import groovy.sql.Sql

@Transactional
class ProjectTaskService {

    def dataSource

     def list(def params, def request) {
        return ProjectTask.findAll()
    }

    def single(def params, def request) {
        String query
        def sql = new Sql(dataSource);
        try {
            query = "Select T.*,((Due_Date < NOW() AND Submitted_Date is NULL) || (Submitted_Date is NOT NULL AND Submitted_Date > Due_Date)) as lagging ,((Due_Date >= NOW() AND Submitted_Date is NULL) || (Submitted_Date is NOT NULL AND Submitted_Date = Due_Date)) as ontime ,(Submitted_Date is NOT NULL AND Submitted_Date < Due_Date) as leading1,p.FullName from project_task T join persons p on p.Person_id=T.Alloted_To where T.Group_id=${params.id} AND T.Deleted_Date is NULL";
            def task = sql.rows(query)
            query = "Select persons.Person_id ,Group_title,Group_Name from project_group JOIN instructor ON project_group.Instructor_id1 = instructor.Instructor_id JOIN persons on persons.Person_id = instructor.Person_id where Group_id = ${params.id}"
            def row = sql.rows(query)
            if(task){
                task.each { t->
                    t.Due_Date = t.Due_Date ? t.Due_Date : "";
                    t.Start_date = t.Start_date ? t.Start_date : "Not Started";
                    t.Approved_Date = t.Approved_Date ? t.Approved_Date : "Not Approved";
                    if(t.lagging == 1)
                    {
                        t.Task_status = "Lagging";
                    }
                    else if(t.ontime == 1)
                    {
                        t.Task_status = "Ontime";
                    }
                    else if(t.leading1 == 1)
                    {
                        t.Task_status = "Leading";
                    }
                }
            }
            HashMap hm = new HashMap()
            hm.put("person_id",row[0].Person_id)
            hm.put("Group_title",row[0].Group_title)
            hm.put("Group_Name",row[0].Group_Name)
            hm.put("tasks",task)
            return hm
        }catch(Exception ex) {
            ex.printStackTrace()
        }
    }

    def save(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = new ProjectTask(statusJson)

        statusInstance = statusInstance.save()

        return statusInstance
    }

    def update(def params, def request) {
        def statusJson = request.JSON
        def statusInstance = ProjectTask.get(params?.id)
        statusInstance.properties = statusJson

        statusInstance = statusInstance.merge()

        return statusInstance
    }

    def delete(def params, def request) {
        def statusInstance = ProjectTask.get(params?.id)
        statusInstance = statusInstance.delete()

        return statusInstance
    }

    def getStatusById(def params, def request){
        try {
            def id = params?.id
            def sql = new Sql(dataSource);
            String query = "Select count(*) as cnt from project_task where Group_id = ${id} AND Deleted_Date is NULL AND  ((Due_Date < NOW()  AND Submitted_Date is NULL) || (Submitted_Date > Due_Date));";
            def lagging = sql.rows(query)
            lagging = lagging[0].get("cnt");

            query = "Select count(*) as cnt from project_task where Group_id = ${id} AND Deleted_Date is NULL AND  ((Due_Date >= NOW()  AND Submitted_Date is NULL) || (Submitted_Date = Due_Date));";
            def ontime = sql.rows(query)
            ontime = ontime[0].get("cnt");

            query = "Select count(*) as cnt from project_task where Group_id = ${id} AND Deleted_Date is NULL AND Approved_Date is NOT NULL AND (Submitted_Date < Due_Date);";
            def leading = sql.rows(query)
            leading = leading[0].get("cnt");

            HashMap hm = new HashMap()
            hm.put("lagging",lagging)
            hm.put("ontime",ontime)
            hm.put("leading",leading)
            return hm
        } catch(Exception e){
            e.printStackTrace()
        }
    }
}

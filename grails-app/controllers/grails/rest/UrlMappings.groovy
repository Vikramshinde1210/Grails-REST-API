package grails.rest

class UrlMappings {

    static mappings = {
        // "/department/$College_id"(controller: "department", action: "index", method:"GET")

        delete "/$controller/$id(.$format)?"(action:"delete")
        get "/$controller(.$format)?"(action:"index")
        get "/$controller/$id(.$format)?"(action:"show")
        post "/$controller(.$format)?"(action:"save")
        put "/$controller/$id(.$format)?"(action:"update")
        patch "/$controller/$id(.$format)?"(action:"patch")

       
        // Guide
        "/guide"(controller: "persons", action: "guide", method:"GET")
        "/guide/$id"(controller: "persons", action: "show", method:"GET")


        // Domain (ProjectDomain)
        "/getDomains"(controller: "ProjectDomain", action: "index", method:"GET")
        "/getDomains/$id"(controller: "ProjectDomain", action: "show", method:"GET")

        "/getDomains"(controller: "ProjectDomain", action: "save", method:"POST")
        "/getDomains/$id"(controller: "ProjectDomain", action: "update", method:"PUT")

        "/getDomains/$id"(controller: "ProjectDomain", action: "delete", method:"DELETE")

        // Signin
        "/api/auth/signin"(controller: "persons", action: "signin", method:"POST")
        "/api/auth/signup"(controller: "persons", action: "save", method:"POST")

        // Project
        "/api/getproject/$id"(controller: "project",action: "index",method: "GET")
        "/api/verifyuser/$id"(controller: "ProjectGroup",action: "verifyUser",method: "GET")

        // Tasks
        "/api/tasks/$id"(controller:"ProjectTask",action: "show",method: "GET")
        "/api/tasks/status/$id"(controller:"ProjectTask",action: "getStatus",method: "GET")

        "/"(controller: 'application', action:'index')
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}

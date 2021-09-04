package grails.rest

class UrlMappings {

    static mappings = {
        
        "/"(controller: 'application', action:'index')
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}

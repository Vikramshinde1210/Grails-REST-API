grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/',               access: ['permitAll']  ],
        [pattern: '*/*',               access: ['permitAll']],
]
grails.plugin.springsecurity.password.algorithm = 'bcrypt'
grails.plugin.springsecurity.password.encodeHashAsBase64 = true
grails.plugin.springsecurity.password.bcrypt.logrounds = 8
grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '**/**',                filters: 'none'],
        [pattern: '*/*',                filters: 'none']
]
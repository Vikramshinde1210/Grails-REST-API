package grails.rest

import grails.gorm.transactions.Transactional

import java.security.MessageDigest
import java.security.NoSuchAlgorithmException
import java.security.SecureRandom
@Transactional

class AuthService {
    def tokenCreate(){
        final SecureRandom secureRandom = new SecureRandom(); //threadsafe
        final Base64.Encoder base64Encoder = Base64.getUrlEncoder(); //threadsafe
        byte[] randomBytes = new byte[128];
        secureRandom.nextBytes(randomBytes);
        return base64Encoder.encodeToString(randomBytes);
    }
    def genToken(logid){
        println("in gentoken")
        def login = Persons.findById(logid)
        Date now = new Date()
        final long HOUR = 3600*1000;
        login.tokenexpiry = new Date(now.getTime() + HOUR)
        login.accessToken = tokenCreate()
        login.save(failOnError:true)
        return login.accessToken
    }

    //  Return person if token is valid else return null
    def checkAuth(token,uid){
        Persons person = Persons.findByIdAndAccessToken(uid,token)
        return person
    }
}

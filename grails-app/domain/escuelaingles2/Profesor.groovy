package escuelaingles2

class Profesor extends Usuario {

    //List cursos
    String video
    String constancia
    
    static hasMany = [cursos: Curso,peticiones: Peticion]
    
    static constraints = {       
        video nullable:true// maxSize: 104857600,url:true)
        constancia nullable:true// maxSize: 1000000,url:true)
        cursos nullable:true
    }
}

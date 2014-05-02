package escuelaingles2

class Alumno extends Usuario{

    static hasMany = [cursos:Curso]
    
    static constraints = {
    }
}

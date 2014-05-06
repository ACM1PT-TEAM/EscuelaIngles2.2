package escuelaingles2

class Alumno extends Usuario{
  
    static hasMany = [peticiones:PeticionAlumno]
    
    static constraints = {
    }
}

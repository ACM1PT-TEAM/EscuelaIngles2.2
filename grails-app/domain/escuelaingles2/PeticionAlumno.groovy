package escuelaingles2

class PeticionAlumno {

    String estado
    Integer calificacion
    
    static belongsTo = [curso:Curso, alumno:Alumno]
    
    static constraints = {
        estado inList:["Aceptado","Rechazado","Pendiente"], nullable:true, blanck:true
    }
}

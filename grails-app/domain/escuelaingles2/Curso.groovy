package escuelaingles2

class Curso {
    
    String nivelCurso
    boolean aceptado
    boolean[] dias
    String horario
    boolean activo
    
    static belongsTo = [profesor:Profesor]
    
    static hasMany = [alumnos:Alumno]

    static constraints = {
        alumnos nullable: true
        profesor nullable: true
    }
}

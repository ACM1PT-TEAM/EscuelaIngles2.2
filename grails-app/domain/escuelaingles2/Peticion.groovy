package escuelaingles2

class Peticion {

    String nivelCurso
    boolean[] dias
    boolean[] horarios
    
    static belongsTo = [profesor:Profesor]
    
    static constraints = {
    }
}

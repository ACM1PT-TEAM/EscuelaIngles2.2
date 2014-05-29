package escuelaingles2

class Peticion {

    String nivelCurso
    String dias
    String horarios
    
    static belongsTo = [profesor:Profesor]
    
    static constraints = {
		nivelCurso inList:["Basico", "Intermedio", "Avanzado","Conversacion"]
		dias inList:["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado"]
		//horarios //inList:["7-9 am","9-11 am","11-13 pm","13-15 pm","15-17 pm","17-19 pm","19-21 pm"]
    }
}

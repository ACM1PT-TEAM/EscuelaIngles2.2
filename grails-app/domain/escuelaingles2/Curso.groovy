package escuelaingles2

class Curso {
    String nivelCurso
	String dias
    String horario
    Boolean activo
    
    static belongsTo = [profesor:Profesor]
    static hasMany = [peticiones:PeticionAlumno]

    static constraints = {
		nivelCurso inList:["Basico","Intermedio","Avanzado","Conversacion"], blank: false, nullable: false
		dias inList:["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado"], blank: false, nullable: false
		horario blank: false, nullable: false//inList:["7-9 am","9-11 am","11-13 pm","13-15 pm","15-17 pm","17-19 pm","19-21 pm"], 
		activo display:false, blank:true, nullable:true
		peticiones display:false,nullable:true
    }

	String toString(){
                            "${nivelCurso} ${horario} ${profesor.nombre} ${profesor.apellidoPaterno}"
	}
}

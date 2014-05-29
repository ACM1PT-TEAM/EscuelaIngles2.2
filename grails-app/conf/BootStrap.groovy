import escuelaingles2.Profesor
import escuelaingles2.Usuario
import escuelaingles2.Alumno
import escuelaingles2.Curso
import escuelaingles2.PeticionAlumno

class BootStrap {

    def init = { servletContext ->
		def p1 = new Profesor(
				correoElectronico:"a@a.com",
				password:"acm1pt",
				nombre:"Moises",
				apellidoPaterno:"Mascapo",
				apellidoMaterno:"rongas",
				telefono:"34123456",
				video:"https://www.youtube.com/watch?v=dQw4w9WgXcQ"
				)

		p1.save()

		def a1 = new Usuario(
				correoElectronico:"ad@a.com",
				password:"acm1pt",
				nombre:"Moises",
				apellidoPaterno:"Mascapo",
				apellidoMaterno:"rongas",
				telefono:"34123456",
				tipoUsuario:"admin"
				)

		a1.save()

		if(p1.hasErrors()){
			println p1.errors
		}

		def p2 = new Profesor(
				correoElectronico:"b@a.com",
				password:"acm1pt",
				nombre:"Eduardo",
				apellidoPaterno:"Sopla",
				apellidoMaterno:"Velas",
				telefono:"3412342",
				video:"https://www.youtube.com/watch?v=kndkJ1Sn8Ew"
				)

		p2.save()

		def p3 = new Alumno(
				correoElectronico:"c@a.com",
				password:"acm1pt",
				nombre:"fernando",
				apellidoPaterno:"acm",
				apellidoMaterno:"1pt",
				telefono:"ascscsd"
				)

		p3.save()

		if(p2.hasErrors()){
			println p3.errors
		}

		def c1 = new Curso(
				nivelCurso:"Basico",
				dias:"Lunes",
				horario:"15-17 pm",
				activo:true,
				profesor:p1
				)

		c1.save()

		def c2 = new Curso(
				nivelCurso:"Intermedio",
				dias:"Sabado",
				horario:"15-17 pm",
				activo:false,
				profesor:p2
				)

		c1.save()

		for(i in 1..10){
			def x = new Alumno(correoElectronico:"c${i}@a.com",	password:"acm1pt",nombre:"alumno ${i}",apellidoPaterno:"acm",	apellidoMaterno:"1pt",
				telefono:"ascscsd")
			x.save() 

			def peticion = new PeticionAlumno(estado:"Aceptado", curso:c1, alumno:x)

			peticion.save()

		}

		def lista = Usuario.list()

		for ( i in lista){
			println i
		}

		println "Profesores"

		def lista2 = Profesor.list()

		for ( i in lista2){
			println i
		}
    }
    def destroy = {
    }
}

package escuelaingles2



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfesorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Profesor.list(params), model:[profesorInstanceCount: Profesor.count()]
    }

    def principal_profesor() {
		def profe = Profesor.get(session.profesor.id)
		[profe:profe]
    }

    def show_global(Profesor profesorInstance) {
        respond profesorInstance
    }

    def show(Profesor profesorInstance) {
        respond profesorInstance
    }

    def create() {
        respond new Profesor(params)
    }

	def cursosProfesor(){
		def lista = Profesor.get(session.profesor.id).cursos
		[lista:lista]
	}

	def calificarCurso(){
		def curso = Curso.get(params.idCurso)
		def peticiones = PeticionAlumno.findAllByCursoAndEstado(curso,"Aceptado")
		[peticiones:peticiones]
	}

	def guardarCalificacion(){
		def peticion = PeticionAlumno.get(params.peticionid)
		peticion.calificacion = params.int('calificacion')	
		peticion.save(flush:true)
		redirect(uri: "/profesor/calificarCurso?idCurso=${peticion.curso.id}")	
	}

    @Transactional
    def save(Profesor profesorInstance) {
        if (profesorInstance == null) {
            notFound()
            return
        }

        if (profesorInstance.hasErrors()) {
            respond profesorInstance.errors, view:'create'
            return
        }

        profesorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'profesorInstance.label', default: 'Profesor'), profesorInstance.id])
				redirect(uri: "/")
            }
            '*' { respond profesorInstance, [status: CREATED] }
        }
    }

    def edit(Profesor profesorInstance) {
        respond profesorInstance
    }

    @Transactional
    def update(Profesor profesorInstance) {
        if (profesorInstance == null) {
            notFound()
            return
        }

        if (profesorInstance.hasErrors()) {
            respond profesorInstance.errors, view:'edit'
            return
        }

        profesorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
                redirect(action:"principal_profesor")
            }
            '*'{ respond profesorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Profesor profesorInstance) {

        if (profesorInstance == null) {
            notFound()
            return
        }

        profesorInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesorInstance.label', default: 'Profesor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

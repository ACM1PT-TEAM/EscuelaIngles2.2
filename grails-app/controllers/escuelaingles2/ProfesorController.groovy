package escuelaingles2



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.web.multipart.commons.CommonsMultipartFile

@Transactional(readOnly = true)
class ProfesorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def fileUploadService
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Profesor.list(params), model:[profesorInstanceCount: Profesor.count()]
    }

    def principal_profesor() {
		if(!session.profesor){
			redirect(uri:"/")
		}
		else{
			def profe = Profesor.get(session.profesor.id)
			[profe:profe]
		}
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
		if(!session.profesor){
			redirect(uri:"/")
		}
		else{
			def lista = Profesor.get(session.profesor.id).cursos
			[lista:lista]
		}
	}

	def calificarCurso(){
		if(!session.profesor){
			redirect(uri:"/")
		}
		else{
			def curso = Curso.get(params.idCurso)
			def peticiones = PeticionAlumno.findAllByCursoAndEstado(curso,"Aceptado")
			[peticiones:peticiones]
		}
	}

	def guardarCalificacion(){
		if(!session.profesor){
			redirect(uri:"/")
		}
		else{
			def peticion = PeticionAlumno.get(params.peticionid)
			peticion.calificacion = params.int('calificacion')	
			peticion.save(flush:true)
			redirect(uri: "/profesor/calificarCurso?idCurso=${peticion.curso.id}")	
		}
	}

    @Transactional
    def save(Profesor profesorInstance) {
        if (profesorInstance == null) {
            notFound()
            return
        }

        if (profesorInstance.hasErrors()) {
            println profesorInstance.errors
            respond profesorInstance.errors, view:'create'
            return
        }
        
        CommonsMultipartFile file = request.getFile('videoDireccion')        
        CommonsMultipartFile file2 = request.getFile('constanciaDireccion')        
        
        if( file.empty ){
         flash.message = "No se selecciono el archivo de video"        
         respond profesorInstance, view : 'create'   
         return
        }
        
        if( file2.empty ){
         flash.message = "No se selecciono el archivo pdf"        
         respond profesorInstance, view : 'create'   
         return
        }
        //Metodo que genera una secuencia unica de bytes que sera el nombre del archivo (Universally Unique Identifier)
        //String baseFileName = java.util.UUID.randomUUID().toString(); 
        String baseFileName = profesorInstance.toString()+"_video";
        String baseFileName2 = profesorInstance.toString()+"_constancia";
        def downloadedFile = request.getFile( "videoDireccion" )
        def downloadedFile2 = request.getFile( "constanciaDireccion")
        def dirArchivo = "videos/"
        def dirArchivo2 = "constancias/"
        String mimeType = downloadedFile.contentType
        String mimeType2 = downloadedFile2.contentType
        
        String extension = mimeType.substring(mimeType.lastIndexOf('/') + 1)
        String extension2 = mimeType2.substring(mimeType2.lastIndexOf('/') + 1)
        
        //if(extension.equals("mp4"))
            String fileUploaded = fileUploadService.uploadFile( downloadedFile, "${baseFileName}"+"."+extension, dirArchivo )
        //else
          //  flash.message = "El video debe tener formato mp4"
            
       // if(extension2.equals("pdf"))
            String fileUploaded2 = fileUploadService.uploadFile( downloadedFile2, "${baseFileName2}"+"."+extension2, dirArchivo2 )
        //else
          //  flash.message = "La constancia debe tener formato pdf"
        // Guardando el archivo en la carpeta files, in the web-app, with the name: baseFileName
        
        if( fileUploaded){
           profesorInstance.video = "${baseFileName}"+"."+extension
           profesorInstance.constancia = "${baseFileName2}"+"."+extension2
           profesorInstance.save flush:true
           flash.message = message(code: 'default.updated.message', args: [message(code: 'Profesor.label', default: Profesor), profesorInstance.id])
           redirect profesorInstance
        }
        else
        {
            respond profesorInstance, [status: OK]
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

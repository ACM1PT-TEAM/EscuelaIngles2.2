package escuelaingles2
import org.springframework.web.multipart.MultipartFile
import org.codehaus.groovy.grails.web.context.ServletContextHolder
import grails.transaction.Transactional

@Transactional
class FileUploadService {

    def String uploadFile(MultipartFile file, String name, String destinationDirectory)
    {
        def servletContext = ServletContextHolder.servletContext
        def storagePath = servletContext.getRealPath(destinationDirectory)
   
        //si no un storagePath existe crear uno por defecto
        def storagePathDirectory = new File(storagePath)
        if(!storagePathDirectory.exists())
        {
            println "Creando directorio ${storagePath}"
            if(storagePathDirectory.mkdirs())
            {
                println "Directorio creado"                
            }
            else
            {
                println "Directorio no creado"
            }                        
        }
        
        //Guardar archivo
        if(!file.isEmpty())
        {
            file.transferTo(new File("${storagePath}/${name}"))
            println "Archivo guardado en ${storagePath}/${name}"
            return "${storagePath}/${name}"
        }
        else
        {
            println "El Archivo ${file.inspect()} esta vacio!"
            return null
        }
    }
}

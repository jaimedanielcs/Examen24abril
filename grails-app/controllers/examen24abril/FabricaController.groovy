 package examen24abril

 import grails.transaction.Transactional
 import org.omg.CosNaming.NamingContextPackage.NotFound



 @Transactional(readOnly = true)
 class FabricaController {

    def index() {}
     def create(){

        /*Fabrica fabricaInstance=new Fabrica()
         render view: "/fabrica/create", model: [fabricaInstance:fabricaInstance]*/
     }

@Transactional
  def save(Fabrica fabricaInstance){
        if(fabricaInstance==null){
            NotFound()
            return
        }

      fabricaInstance.save(flush: true,failOnError: true)
    redirect(fabricaInstance)
  }
    def show (Fabrica fabricaInstance){
        response fabricaInstance
    }


}

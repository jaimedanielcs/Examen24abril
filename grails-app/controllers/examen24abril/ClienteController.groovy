package examen24abril

import org.omg.CosNaming.NamingContextPackage.NotFound

class ClienteController {

    def index() {}
    def create(){
        response new Cliente(params)
    }
    def show(){}
    def edit(){}
    def delet(){}
    def save(Cliente cliente){
    if(cliente==null){
        NotFound()
        return
    }
        if(cliente.limiteCredito>3000000){
            println("credito alto")
        }
        cliente.save(flush: true,failOnError: true)
    }
}

package examen24abril

class PedidoController {

    def index() {

    }
    def create(){}
    def show(){}
    def edit(){}
    def delet(){}
    def save(){

        Cabezera cabezera=new Cabezera(params)
        cabezera.save(flush: true,failOnError: true)
        Cuerpo cuerpo=new Cuerpo(params)
        cuerpo.save(flush: true,failOnError: true)

        Pedido pedido=new Pedido()
        pedido.setCabezera(cabezera)
        pedido.setCuerpo()
        pedido.save(flush: true,failOnError: true)

    }
}

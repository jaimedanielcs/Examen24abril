package examen24abril

class ArticuloController {

    def index() {}
    def create(){

    }
    def save(){
        Articulo articulo=new Articulo(params)
        articulo.save(failOnError: true,flush: true)

    }
    def show(){}
    def edit(){}
    def delete(){}

}

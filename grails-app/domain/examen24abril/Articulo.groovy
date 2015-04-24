package examen24abril

class Articulo {


    def numeroArticulo
    def descripcion

     static hasMany = [fabricas: Fabrica]
    static constraints = {

        numeroArticulo nullable: true
        descripcion nullable: true
    }
}

package examen24abril

class Cuerpo {
    Integer cantidad
    Articulo articulo

    static hasMany = [articulo:Articulo]
    static constraints = {
    }
}

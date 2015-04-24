package examen24abril

class DireccionEnvio {

    String ciudad
    String descripcion
    String comunidad

    static constraints = {
        ciudad nullable: true
        descripcion nullable: true
        comunidad nullable: true
    }
}

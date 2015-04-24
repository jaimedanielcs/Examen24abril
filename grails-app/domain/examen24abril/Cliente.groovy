package examen24abril

class Cliente {
     int numCliente
    int limiteCredito
    int saldo
    int descuento

    static hasMany = [direccionEnvio:DireccionEnvio]
    static constraints = {
        numCliente nullable: true
        limiteCredito nullable:true
        direccionEnvio nullable: true
    }
}

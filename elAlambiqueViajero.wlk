import recuerdoDeProvincia.*
object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.desgaste()
        }
    }
    method recuerdo() = recuerdo
    method vehiculo(nuevo) {
        vehiculo = nuevo
    }
    
    method vehiculo() = vehiculo
}

object alambiqueVeloz {
    const rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    const patente = "AB123JK"
    method puedeFuncionar() = combustible >= consumoPorViaje
    method desgaste() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
    method patenteValida() = patente.head() == "A"
}

object superConvertible{
    var convertido = antigualla
    method puedeFuncionar() = convertido.puedeFuncionar() 
    method rapido() = convertido.rapido()
    method desgaste(){
        convertido.desgaste()
    }
    method convertir(vehiculo){
        convertido = vehiculo
    }
    method patenteValida() = convertido.patenteValida()
}

object chatarra {
    var cañones = 10
    var municiones = "ACME"
    method puedeFuncionar() = municiones == "ACME" and cañones.between(6,12)
    method rapido() = municiones.size() < cañones
    method desgaste(){
        cañones = (cañones / 2).roundUp(0)
        if (cañones < 5 )
          municiones = municiones + " Obsoleto"
    }
    method patenteValida() = municiones.take(4) == "ACME" 
    method cañones() = cañones

}

object antigualla {
    var gangsters = 7
    method puedeFuncionar() = gangsters.even()
    method rapido() = gangsters > 6
    method desgaste(){
        gangsters = gangsters -1
    }
    method patenteValida() = chatarra.rapido() 
}

object moto{
    method rapido() = true
    method puedeFuncionar() = not self.rapido()
    method desgaste() { }
    method patenteValida() = false
}
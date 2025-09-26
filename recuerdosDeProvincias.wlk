import elAlambiqueViajero.*
object paris {
    method recuerdo() = "llavero"
    method puedeLLegar(auto) = auto.puedeFuncionar()
}

object buenosAires {
    var tieneYerba = true
    method recuerdo() = "mate"
    method tieneYerba() = tieneYerba
    
    method cambiarEstado() {
        tieneYerba = !tieneYerba
    }
    
    method puedeLLegar(auto) = auto.rapido()
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLLegar(vehiculo) = true
}

object lasVegas {
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar(vehiculo)
}

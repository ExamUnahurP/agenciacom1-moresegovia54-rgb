class Packs{
    const dias
    const precioBase
    const beneficiosEspeciales = []
    const coordinador

    method beneficiosEspecialesVigentes() = beneficiosEspeciales.filter({b => b.estaVigente()}).sum({b => b.costo()})

    method valorFinal(){
        var precioTotal

        method precioTotal() = precioBase + self.beneficiosEspecialesVigentes
        if (iajesInternacionales){
            precioTotal = 
        }
        
    }


}

class ViajesNacionales inherits Packs {
    const provinciaDestino
    const actividades = []

    method provinciaDestino() = provinciaDestino


}

class ViajesInternacionales inherits Packs{
    const paisDestino
    const escalas
    const lugarDeInteres = true

    method paisDestino() = paisDestino
    method cantEscalas() = escalas
    method esLugarDeInteres() = lugarDeInteres
    method noEsLugarDeInteres(){
        lugarDeInteres = false
    }
}

class Coordinador{
    var estaMotivado = true
    const viajes
    const añosDeExperiencia
    var rol
    var calificado 
    
    method añosDeExperiencia() = añosDeExperiencia
    method cantViajes() = viajes

    method estaMotivado() = estaMotivado
    method noEstaMotivado(){
        estaMotivado = false
    }

    method cambiarRol(nuevoRol){
        if (nuevoRol == "guia" or nuevoRol == "asistente logistico" or nuevoRol == "acompañante"){
            rol = nuevoRol
        } else {
            self.error("No se puede cambiar de rol")
        }
    }
    method esAltamenteCalificado(){
        if (cantViajes() >= 20){
          return calificado = true
        }
        if (rol == "guia"){
            return estaMotivado = true
        }

    }
}

class BeneficiosEspeciales{
    const tipo 
    const costo
    const estaVigente = true

    method costo() = costo
    method estaVigente() = estaVigente
    method noEstaVigente(){
        estaVigente = false
    }
}

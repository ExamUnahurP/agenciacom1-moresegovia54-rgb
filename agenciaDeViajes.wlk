class Packs{
    const dias
    const precioBase
    const beneficiosEspeciales 
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
    override method esPremium(){
        return dias > 10 && coordinador.esAltamenteCalificado()
    }


}

class ViajesInternacionales inherits Packs{
    const paisDestino
    const escalas
    const lugarDeInteres = true

    method paisDestino() = paisDestino
    method cantEscalas() = escalas
    method esLugarDeInteres() = lugarDeInteres
    override method esPremium(){
        return esLugarDeInteres && dias > 20 && cantEscalas() == 0
    }
}

class packProvincial inherits ViajesNacionales{
    const cantDeCiudadesAVisitar

    override method esPremium(){
        return actividades.size
    }
}

object coordinador{
    var estaMotivado = true
    const viajes
    const aniosDeExperiencia
    var rol
    var calificado 
    
    method estaCalificado() = calificado
    method aniosDeExperiencia() = añosDeExperiencia
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
          return estaCalificado() = true
        }

        if (rol == "guia"){
            return estaMotivado()
        } else (rol == "asistente logistico"){
            return aniosDeExperiencia() >= 3
        }
        return true

    }

    method esPremium() = false
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

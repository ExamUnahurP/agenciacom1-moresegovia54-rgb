class Packs{
    const dias
    const precioBase
    const beneficiosEspeciales = []
    const coordinador
}

class ViajesNacionales inherits Packs {
    const provinciaDestino
    const actividades = ["string"]

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
}

class BeneficiosEspeciales{
    const tipo = ["traslados privados" , "acceso a salas vip" , "seguros adicionales"]
    const costo
    const estaVigente = trur

    method costo() = costo
    method esta
}

class Packs{
    const dias
    const precioBase
    const beneficiosEspeciales = []
    const coordinador
}

class ViajesNacionales inherits Packs {

}

class ViajesInternacionales inherits Packs{

    method 
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
        if (nuevoRol == "guia" && )

        rol = nuevoRol
    }
}
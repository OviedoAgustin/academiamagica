object juanCarlos {
    var property estaAsignado = false 
    method motivacion() {} // no hace nada

    method featuresPorDia() {
        return 1
    }
}

object guillermoPuertas {
    var property estaAsignado = false 
    var calidadAnteojos = 0 
    method motivacion() {
        calidadAnteojos += 1
    }

    method featuresPorDia() {
        return calidadAnteojos
    }
}

object estebanTrabajos {
    var property estaAsignado = false 
    var rendimiento = 10

    method motivacion() {
        rendimiento = 0.max(rendimiento-1)
    }

    method featuresPorDia() = rendimiento
}

object ricardoHombrePuesto {
    var property estaAsignado = false 
    method motivacion() {} // no hace nada

    method featuresPorDia() = 0 // no hace nada
}

object pepita {
    var property estaAsignado = false 
    var cantidadCalorias = 0

    method cantidadCalorias() = cantidadCalorias 

    method motivacion() {
        cantidadCalorias += 1000
    }

    method featuresPorDia() = cantidadCalorias/500
}
import oompaLoompas.*
object cadbury{
    var features = 5
    var property empleado = null

    method features() = features
    method estaTerminado() = features == 0

    method asignarEmpleado(unEmpleado){
        empleado=(unEmpleado)
        unEmpleado.estaAsignado(true)
        }
    method desasignarEmpleado(unEmpleado){
        unEmpleado.estaAsignado(false)
        empleado.remove(unEmpleado)
        }

    method pasarUnDia(){
        features = 0.max(features - empleado.featuresPorDia())
    }
}

object vaporware{
    var features = 20
    const property empleado = []
    
    method features() = features
    method estaTerminado() = features == 0

    method asignarEmpelado(unEmpleado){
        empleado.add(unEmpleado)
        unEmpleado.estaAsignado(true)
        }
    method desasignarEmpleado(unEmpleado){
        unEmpleado.estaAsignado(false)
        empleado.remove(unEmpleado)
        }

    method pasarUnDia(){
        empleado.forEach({e => features += (e.featuresPorDia())})
    }
}

object verduleria{
    var property empleado = null

    var diasRestantes = 10
    method estaTerminado() = diasRestantes == 0

    method asignarEmpelado(unEmpleado){
        empleado.add(unEmpleado)
        unEmpleado.estaAsignado(true)
        }
    method desasignarEmpleado(unEmpleado){
        unEmpleado.estaAsignado(false)
        empleado.remove(unEmpleado)
        }

    method pasarUnDia(){
        diasRestantes = 0.max(diasRestantes-1)
    }
}
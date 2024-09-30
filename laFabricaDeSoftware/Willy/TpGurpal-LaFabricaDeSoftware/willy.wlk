import empresas.*
import oompaLoompas.*
object willy {
    const oompaLoompaContratados = []
    const proyectos = []

    method oompaLoompaContratados() = oompaLoompaContratados
    method proyectos() = proyectos 

    method contratarEmpleado(oompaLoompa) {
        oompaLoompaContratados.add(oompaLoompa)
    }

    method asignarEmpleadoAProyecto(unEmpleado,unProyecto){
        unProyecto.contratarEmpleado(unEmpleado)
    }

    method aceptarProyecto(proyecto) {
        proyectos.add(proyecto)
        if(oompaLoompaContratados.any({o => not o.estaAsignado()})){
            proyecto.asignarEmpleado(oompaLoompaContratados.find({o => not o.estaAsignado()}))
        }
    }

    method cantidadFeaturesPorDia(unEmpleado) {
        unEmpleado.featuresPorDia()
    }

    method avanzarUnDiaAProyectos() {
        proyectos.forEach({p => p.pasarUnDia()})
    }

    method proyectosSinTerminar(){
        proyectos.count({p => not p.estaTerminado()})
    }

    method motivarEmpleados() {
        oompaLoompaContratados.filter({o => o.estaAsignado()}).forEach(
        {o => o.motivacion()})
    }

    method empleadosSinProyectos() = oompaLoompaContratados.count(
        { o => not o.estaAsignado() }
    )
}
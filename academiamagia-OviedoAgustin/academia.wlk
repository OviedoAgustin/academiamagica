import magos.*

object academina {
  var candidatos = []
  var equipo = []
  
  method evaluar(unMago){
    return unMago.energia() > 40 and unMago.poder() >= 30
  }

  method unirse(unMago){
    if (self.evaluar(unMago)){
        equipo.add(unMago)
    } else {
        candidatos.add(unMago)
    }
  }

  method entrenar(){
    equipo.forEach({m => m.entrenar()})
  }

  method volverAEvaluar(){
    const pasaron = candidatos.filter({c => self.evaluar(c)})
    equipo.addAll(pasaron)
    candidatos.removeAll(pasaron)
  }

  method poderTotal(){
    return equipo.sum({m => m.poder()})
  }

  method estanEnCondiciones(){
    return equipo.all({m => m.energia() > 45})
  }

  method deltaDeEnergia(){
    return equipo.max({m => m.energia()}).energia() - equipo.min(({m => m.energia()})).energia()
  }

  method nombresCon90DeEnergia(){
    const magosMas90 = equipo.filter({m => m.energia() > 90})
    return magosMas90.map({mag => mag.nombre()})
  }
}
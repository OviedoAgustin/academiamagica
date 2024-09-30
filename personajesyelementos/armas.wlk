object ballesta {
  var flechas = 10
  
  method potencia() = 4
  
  method estaCargada() = flechas > 0
  
  method registrarUso() = 0.max(flechas - 1)
}

object jabalina {
  var estaCargada = true
  
  method registrarUso() {
    estaCargada = false
  }
  
  method potencia() = 30
  
  method estaCargada() = estaCargada
}
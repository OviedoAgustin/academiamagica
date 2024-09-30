object maquina {
  var produccion = [43, 18, 49, 62, 33, 39]

  method algunDiaSeProdujo(cantidad){
    return produccion.any({p => p == cantidad})
  }

  method maximoValorDeProduccion(){
    return produccion.max()
  }

  method valoresDeProduccionPares(){
    return produccion.filter({p => p.even()})
  }

  method produccionEsAcotada(n1, n2){
    return produccion.min() > n1 and produccion.max() < n2
  }

  method produccionesSuperioresA(cuanto){
    return produccion.filter({p => p > cuanto})
  }

  method produccionesSumando(n){
    return produccion.map({p => p + n})
  }
}
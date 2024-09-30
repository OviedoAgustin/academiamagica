import armas.*
import elementos.*

object floki {
  var arma = ballesta
  
  method encontrarElemento(unElemento) {
    if (arma.estaCargada()) {
      unElemento.recibirAtaque(arma.potencia())
      arma.registrarUso()
    }
  }
  
  method cambiarArma(unArma) {
    arma = unArma
  }
}

object luisa {
  
}

object mario {
  var valor = 0
  
  method valor() = valor

  var elementoAlto = false
  
  method encontrarElemento(unElemento) {
    unElemento.recibirTrabajo()
    elementoAlto = unElemento.altura() >= 10
    valor += unElemento.otorgarValor()
  }

  method esFeliz() = valor >= 50 or elementoAlto
}
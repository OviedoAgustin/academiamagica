import armas.*

object castillo {
  var nivelDefensa = 150
  
  method nivelDefensa() = nivelDefensa
  
  method altura() = 20
  
  method recibirAtaque(armaQueAtaca) {
    nivelDefensa -= armaQueAtaca.potencia()
  }
  
  method otorgaValor() = nivelDefensa / 5
  
  method recibirTrabajo() {
    nivelDefensa += 200.min(nivelDefensa + 20)
  }
}

object aurora {
  var estaViva = true
  
  method estaViva() = estaViva
  
  method recibirAtaque(armaQueAtaca) {
    if (armaQueAtaca.potencia() > 10) {
      estaViva = false
    }
  }
  
  method altura() = 1
  
  method otorgarValor() = 15
  
  method recibirTrabajo() {
    
  }
}

object tipa {
  var altura = 8
  
  method altura() = altura
  
  method altura(unaAltura) {
    altura = unaAltura
  }
  
  method recibirAtaque(armaQueAtaca) {
    
  }
  
  method otorgarValor() = altura * 2
  
  method recibirTrabajo() {
    altura += 1
  }
}
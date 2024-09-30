object selene {
  const property nombre = "selene"
  var energia = 35
  var poder = 60
  var luzLunar = false

  method poder() = poder

  method energia() = energia
  
  method alternar() {
    luzLunar = not luzLunar
  }
  method entrenar() {
    if (luzLunar) {
      poder *= 2
    } else {
      energia += 25
    }
  }
}

object balthazar {
  const property nombre = "balthazar"
  var energia = 45
  var poder = 35
  var hechizosUsados = 0

  method energia() = energia
  method poder() = 0.max(poder - (hechizosUsados * 3))

  method entrenar(){
    energia += 10
    hechizosUsados += 1
  }
}

object iris {
  const property nombre = "iris"
  method energia() = 80
  method poder() = 35
  var sanacion = 2

  method entrenar(){
    sanacion += 1
  }

  method escudoMagico(){
    if (sanacion.odd()){
        escudo.mejorarResistencia(150)
        escudo.mejorarDurabilidad(100)
    } else {
        escudo.mejorarResistencia(80) // ver en clase grabada porque no se multiplica por unidad de sanacion
        escudo.mejorarDurabilidad(60 * sanacion)
    }
  }
}

object escudo {
  var resistencia = 400
  var durabilidad = 600

  method durabilidad() = durabilidad
  method resistencia() = resistencia

  method mejorarResistencia(unValor){
    resistencia += unValor
  }

  method mejorarDurabilidad(unValor){
    durabilidad = 1000.min(durabilidad + unValor)
  }
}

object aldric {
  const property nombre = "aldric"
  var energia = 65
  var poder = 15
  var bastonEquipado = bastonDeHielo

  method poder() = poder

  method energia() = energia

  method cambioDeBaston(tipoDeBaston){
    bastonEquipado = tipoDeBaston
  }

  method entrenar(){
    energia += 20
    poder += bastonEquipado.poder()
  }
}

object bastonDeFuego {
  var property poder = 30
}

object bastonDeHielo {
  var property poder = 20
}
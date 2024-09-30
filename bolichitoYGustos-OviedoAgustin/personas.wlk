import objetos.*

object rosa {
  method leGusta(unaCosa){
    return unaCosa.peso() <= 2000
  }
}

object estefania {
  method leGusta(unaCosa){
    return unaCosa.color().esFuerte()
  }
}

object luisa {
  method leGusta(unaCosa){
    return unaCosa.material().esBrillante()
  }
}

object juan {
  method leGusta(unaCosa){
    return !unaCosa.color().esFuerte() || unaCosa.peso().between(1200, 1800) /// el not se usa para cambiar el valor de los booleanos. Si esto no se cambia, lo va a tomar por false los que van de acuerdo a los gustos de juan.
  }
}
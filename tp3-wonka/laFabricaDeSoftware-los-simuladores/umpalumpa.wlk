object juanCarlos {

    method cantidadDeFeatures(){
        return 1
    }

    method motivacion(){

    }


}

object guillermoPuertas {

    var calidadDeAnteojos = 1 

    method calidadDeAnteojos() = calidadDeAnteojos

    // si lo motivamos aumenta en 1 su calidad de anteojos
    method motivacion(){
        calidadDeAnteojos += 1
    }

    // hace features en base a la calidad de sus anteojos
    method cantidadDeFeatures() {
        return calidadDeAnteojos
    }
}

object estebanTrabajos {

    var moral = 10

    method moral() = moral

    // disminuye la moral
    method motivacion(){
        moral -= 1
    }

    // cantidad de features que hace en base a su moral
    method cantidadDeFeatures(){
        return moral
    }
  
}

object ricardoHombrePuesto {


    method motivacion(){

    }
  
}

object pepita {
    var cantidadDeCalorias = 0

    method cantidadDeCalorias() = cantidadDeCalorias

    method motivacion(){
        cantidadDeCalorias += 1000
    }

    method cantidadDeFeatures(){
        return 0.max(cantidadDeCalorias / 500)
    }
  
}
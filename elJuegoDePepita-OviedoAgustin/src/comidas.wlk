import extras.*
import wollok.game.*

object manzana {

	var property position = game.origin()
	method image() = "manzana.png"
	method siguiente() = silvestre


}

object alpiste {

	var property position = game.origin()
	method image() = "alpiste.png"
	method siguiente() = silvestre


}

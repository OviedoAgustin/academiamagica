import comidas.*
import pepita.*
import wollok.game.*

object nido {
	method image() = "nido.png"
	method position() = game.at(game.width()-1, game.height()-1)
}

object silvestre {
	var property position = game.origin() // ubicamos el objeto en el origen que seria 0 en X y 0 en Y

	method image() = "silvestre.png"

	method siguiente() = manzana

}


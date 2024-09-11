import pepita.*
import wollok.game.*

object nido {
	method image() = "nido.png"
	var property position = game.at(7, 6)
	method energiaQueOtorga() = 0
	method teEncontro() {
	  
	}
}

object silvestre {
	method image() = "silvestre.png"
	method position() = game.at(3.max(pepita.position().x()), 0)
	method teEncontro() {
	  
	}
}

object manzana {
	method image() = "manzana.png"
	var property position = game.at(5, 6)
	method energiaQueOtorga() = 0
	method teEncontro() {
	  
	}
}


object alpiste {
	method image() = "alpiste.png"
	var property position = game.at(3, 7)
	method energiaQueOtorga() = 0
	method teEncontro() {
	  
	}
}


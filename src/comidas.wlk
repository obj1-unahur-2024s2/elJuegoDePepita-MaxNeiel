import pepita.*
import wollok.game.*

object manzana {
	method image() = "manzana.png"
	method position() = game.at(5, 6)
	method energiaQueOtorga() = 0
	method teEncontro() {
	  arg.come(manzana)
	}
}

object alpiste {
	method image() = "alpiste.png"
	method position() = game.at(3, 3)
	method energiaQueOtorga() = 0
	method teEncontro(arg) {
	  arg.come(alpiste)
	}
}


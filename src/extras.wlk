import pepita.*
import wollok.game.*

object nido {
	method image() = "nido.png"
	method position() = game.at(7, 6)
	method energiaQueOtorga() = 0
	method teEncontro(arg) {
	  game.say(self, "Ganaste!")
	}
}

object silvestre {
	method image() = "silvestre.png"
	method position() = game.at(3.max(pepita.position().x()), 0)
	method teEncontro(arg) {
	  game.say(self, "Perdiste!")
	}
}
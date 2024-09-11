import extras.*
import wollok.game.*

object pepita {

	var property energia = 100
	var position = game.at(3,4)

	method position() = position

	method position(arg) {
		self.irA(arg)
	}

	method image()= "pepita" + self.parteNombreImagenSegunUbicacion() + self.parteNombreImagenSegunCansancio() + ".png"

	method parteNombreImagenSegunUbicacion() = if (self.estaEnElNido()) "-grande" else ""
	method parteNombreImagenSegunCansancio() = if (self.estaCansada()) "-gris" else ""


	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method vola(kms) {
		energia = energia - kms * 9
		game.say(self, "Energia: " + energia)
	}

	method irA(nuevaPosicion) {
		if(not self.estaCansada()){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
		}
	}

	method estaCansada() {
		return energia <= 0
	}

	method estaEnElNido() {
		return position == nido.position()
	}
}


import Publicacion.*
object factorComprecion{
var property fc	= 0.7
}


class Foto inherits Publicacion {
	var property ancho
	var property alto
	
	override method tamanio(){
		return (alto*ancho)*factorComprecion.fc()
	}
	
}



import Publicacion.*

class Video inherits Publicacion{
	
	var property segundosDeVideo
	var property calidad
	
	
	override method tamanio(){
		return calidad.pesoDeVideo(segundosDeVideo)
	}
}

class Calidad inherits Video{
	method pesoDeVideo(segundosDeVideo)

}

class Hd inherits Calidad{
	override method pesoDeVideo(segundosDeVideo){
		return segundosDeVideo*3
	}
}


class Normal inherits Calidad{
	override method pesoDeVideo(segundosDeVideo){
		return segundosDeVideo
	}
}
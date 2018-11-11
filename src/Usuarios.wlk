import Publicacion.*

class Usuario{
	
	var property amigos=[]
    var property publicaciones =[]
    var property listaBlanca=[]
	var property listaNegra=[]
 

    
	method publicaciones(){
	return publicaciones	
	}
	
    method cantidadPublicaciones() {
		return publicaciones.size()
	}
	
 
	method agregarListaBlanca(amigo) {
		listaBlanca.add(amigo)
 
	}

	method listaBlanca() {
		return listaBlanca.asSet()
	}

	method listaNegra() {
		return listaNegra.asSet()
	}
	
	method agregarListaNegra(amigo){
		listaNegra.add(amigo)
	}
    
   
    
	method agregarAmigo(usuario){
		amigos.add(usuario)
	}
	
	method cantidadDeAmigos(){
		return amigos.size()
	}
	
 
	
	method amigos(){
		return amigos.asSet()
	}

	
	method pesoDePublicaciones(){
		return publicaciones.map({porTamanio=>porTamanio.tamanio()})
	}
	
	 
 
	method darMegusta(publicacion){
		
		publicacion.recibirMeGusta(self)
	
	}
	
	method publicar(publicacion){
	publicaciones.add(publicacion)	
	publicacion.posteador(self)
	}
	
	method asignarPermiso(publicacion,cual){
		publicacion.permiso(cual)
	}
	
    method amigoConMasMeGusta(){
    	return amigos.max({cant=>cant.cantidadDeMeGusta()})
    }
    
    method cantidadDeMeGusta(){
    	return publicaciones.map({cant=>cant.cantidadDeMeGusta()}).sum()
    }
	
	method totalPublicaciones(){
		return publicaciones.size()
	}
	
	
    method totalDeLikeDados(usuario2){
    	  return usuario2.publicaciones().filter({o=>o.recibioMegustaDe(self)}).size()
         
   }	
    

	
}


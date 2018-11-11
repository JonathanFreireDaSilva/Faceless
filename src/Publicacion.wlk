class Publicacion{
	
	var property posteador
	var property usuariosQueDieronMeGusta = []
	var property permiso
 
	
	method tamanio()
	
method recibioMegustaDe(usuario){
	return self.usuariosQueDieronMegusta().contains(usuario)
}
	
	method recibirMeGusta(usuario){
		usuariosQueDieronMeGusta.add(usuario)
	}
	 
	method cantidadDeMeGusta(){
		return usuariosQueDieronMeGusta.size()
	}
	
 
	
	method usuariosQueDieronMegusta(){
		return usuariosQueDieronMeGusta
	}
	
	method puedeVerUsuario(usuario){
		return permiso.puedeVer(self,usuario)
	}
 
	
	method amigosDePosteador(){
		return posteador.amigos() 
	}
	
 
	
 
 
}


class Permiso{
	
	method puedeVer(publicacion,usuario)
	
}

class Publico inherits Permiso{
	
	override method puedeVer(publicacion,usuario){
		return true
	}
}

class SoloAmigos inherits Permiso{
	override method puedeVer(publicacion,usuario){
		return publicacion.amigosDePosteador().contains(usuario)
	}
}

class ListaBlanca inherits Permiso{
	override method puedeVer(publicacion,usuario){
	 	return publicacion.amigosDePosteador().contains(usuario) && publicacion.posteador().listaBlanca().contains(usuario)
	}
}

class ListaNegra inherits Permiso{
	override method puedeVer(publicacion,usuario){
		return publicacion.amigosDePosteador().contains(usuario) && !publicacion.posteador().listaNegra().contains(usuario)
	}
}










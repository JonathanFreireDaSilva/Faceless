import Publicacion.*
import Usuarios.*

class RedSocial{
 var property usuarios =[]	
 	
 	method agregarUsuario(usuario){
 		usuarios.add(usuario)
 	}
 	
 	
 	method totalPesoDePublicacionesDe(usuario){
 		return usuario.pesoDePublicaciones().sum()
 	}
 	
 	method cantidadDeMegustaDe(publicacion){
 		return publicacion.cantidadDeMeGusta()
 	}
 	
 	
 	method masAmistoso(usuario1,usuario2){
 		return usuario1.cantidadDeAmigos() > usuario2.cantidadDeAmigos()
 	}
 	
 	method puedeVerUsuarioPublicacion(usuario,publicacion){
 		return publicacion.puedeVerUsuario(usuario)
 	}
 	
 	method merjoresAmigos(usuario){
 		return usuario.amigos()
 	}
    
   method amigoMasPopularDe(usuario){
   	return usuario.amigoConMasMeGusta()
   }
   
   method stalkea(usuario1,usuario2){
   	  return  usuario1.totalDeLikeDados(usuario2) > ((usuario2.totalPublicaciones())*0.9 )
   }
}


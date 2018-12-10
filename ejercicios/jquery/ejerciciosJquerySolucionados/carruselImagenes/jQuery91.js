
losDatosDelSlider = {
	'anchoImagen': 733,
	'altoImagen': 350,
	'anchoTotal': 930,
	'alturaCajaTextos': 75,
	'carpetaImagenes': 'img/',
	'imagenes':[
		{'url': '1.jpg', 'tit': 'Uno'},
		{'url': '2.jpg',  'tit': 'Dos'},
		{'url': '3.jpg',  'tit': 'Tres'},
		{'url': '4.jpg',  'tit': 'Cuatro'},
		{'url': '5.jpg',  'tit': 'Cinco'}
	] 
}
$(document).ready(function () {
	
	crearSlider(losDatosDelSlider, '#contenedorSlider');
	
	function crearSlider(datos, contenedorSlider) {
		var contenedor = $(contenedorSlider),
			carpetaImagenes = datos.carpetaImagenes,
			anchoImagen = datos.anchoImagen,
			altoImagen = datos.altoImagen,
			anchoTotal = datos.anchoTotal,
			imagenes = datos.imagenes,
			totalImagenes = imagenes.length,
			boxNegro = datos.alturaCajaTextos,
			anchoMedia = anchoTotal/totalImagenes;		
			contenedor.width(anchoTotal).height(altoImagen);		
		for (indice in imagenes) {
			contenedor
				.append($('<div class="imagen sombraIzquierda"'+
					'id="imagen'+indice+'"'+
					'style="width:'+anchoImagen+'px;'+
					'height:'+altoImagen+'px;'+
					'left:'+(anchoMedia*indice)+'px;'+
					'z-index:'+indice+';'+
					'background: url('+carpetaImagenes+imagenes[indice].url+')" />')
				
				//fadeTo() da opacidad
				//dequeue() desencola
				//apend() añade a continuación
				.append($('<div class="parpadeo" />').fadeTo(0, 0).dequeue())
				.append($('<div class="cajaTextos" style="height:'+boxNegro+'px" />')
					.append('<div class="fondoOscuro" />')
				//html() establece o devuelve el contenido HTML de los elementos seleccionados
					.append($('<div class="titular" />').html(imagenes[indice].tit))
						.append($('<div class="subtitular" />').fadeTo(0, 0).dequeue()
						.append($('<div class="titulo" />').html(imagenes[indice].tit))
					)
				)
			)
		}
		reiniciarListeners()
	}	
	function reiniciarListeners () {
	//unbind() devuelve todos los manjedores para el elemento seleccionado
		$('.imagen').unbind();		
//hover() especifica dos funciones manejadoras cuando se producen los eventos mouseenter y mouseleave		
		$('.imagen').hover(
			function  () {         
				var num = $($(this).parent().find('.imagen')).index(this),
				//parent() selecciona el elemento padre del seleccionado
					anchoTotal = $(this).parent().width(),
					anchoImagen = $(this).width(),
					//find() especifica que tiene que actualizar en el elemento seleccionado
					totalImagenes = $($(this).parent().find('.imagen')).index($(this).parent().find('.imagen:last'))+1,
					cerrado = (anchoTotal-anchoImagen)/(totalImagenes-1),
					titulos = $(this).find('div:eq(2)'),
					parp = $(this).find('.parpadeo'),
					arr = [];
				
				parp.fadeTo(0, 0.5).dequeue();
				parp.fadeTo(500, 0).dequeue();
				titulos.find('div:eq(1)').fadeTo(300,0).dequeue();
				titulos.find('div:eq(2)').fadeTo(300,1).dequeue();
				for (i=1; i<totalImagenes; i++) {
				//JavaScript push() añade un item a un array
					if (i <= num) {arr.push(cerrado*i)}
					else {arr.push(anchoImagen+(cerrado*(i-1)))}
				}
				reposicionar(arr, $(this).parent().attr('id'))
			},
			function () {
				var titulos = $(this).find('div:eq(2)'),
					anchoTotal = $(this).parent().width(),
					
					totalImagenes = $($(this).parent().find('.imagen'))
						.index($(this).parent().find('.imagen:last'))+1,
					posiciones = [];
				titulos.find('div:eq(1)').fadeTo(300, 1).dequeue();
				titulos.find('div:eq(2)').fadeTo(300, 0).dequeue();
				for (i=1; i<totalImagenes; i++) {
					posiciones.push((anchoTotal/totalImagenes)*i)
				}
				//attr() establece el atributo del elemento especificado
				reposicionar(posiciones, $(this).parent().attr('id'))
		});   
	}	
	function reposicionar (posiciones, slider) {
		var contenedor = '#'+slider;
		for (i=1; i<=posiciones.length; i++) {
			var objetivo = '#imagen'+i;
			$(contenedor).find(objetivo).animate({left:posiciones[i-1]}, 200).dequeue();
		}
	}	
});
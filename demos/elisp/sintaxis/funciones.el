(require 'demo-it)
(require 'org-tree-slide)

(setq my-demo/ejemplos-dir (expand-file-name "ejemplos"))


;; funciones para esta presentación

(defun my-demo-step/show-code ()
  "funciones que muestran algo de código y avanza
la presentación al mismo tiempo"
  ;;(demo-it-load-side-window "ejemplos/ejemplo.py")
  (demo-it-presentation-advance))

(defun limpiar ()
  (interactive)
  (ignore-errors
    (kill-buffer "holaMundo.html")))

(defun titulo()
  "Muestra el título de la presentación"
  (demo-it-title-screen "titulo.org" 3))

(defun final()
  "Muestra el título de la presentación"
  (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "../../html/sintaxis/funciones.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Funciones - Introducción</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
		//SINTAXIS DE UNA FUNCION
		//function nombre_funcion (<parámetros_separados_por_comas) { ... }

		//Función sin parámetros
		function saludo (){
			alert(\"¡Hola!\");
		}
")
                (demo-it-insert "
		//Los paréntesis () invocan a la función
		var resultado_saludo = saludo();
		alert (resultado_saludo);

		//Sin paréntesis se puede guardar la función en una variable o mostrar
		var resultado_saludo2 = saludo;
		alert(resultado_saludo2);
")
                (demo-it-insert "
	//Función con parámetros
		function producto (a, b){
			return a * b;
		}

		//Los paréntesis () invocan a la función
		var resultado_producto = producto(3, 4);
		alert (resultado_producto);
")
                (demo-it-insert "
	//Podemos introducir en el alert diréctamente la función
		alert (producto(5,6));

		//Sin paréntesis se puede guardar la función en una variable o mostrar
		alert (producto);

		</script>
	</body>
</html>
")
                )

(demo-it-start)

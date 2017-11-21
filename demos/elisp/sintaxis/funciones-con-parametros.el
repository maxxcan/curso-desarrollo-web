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
                (demo-it-load-file "../../html/sintaxis/funcionesConParametros.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Parámetros de funciones </title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
		/* PARÁMETROS Y ARGUMENTOS:
			- Función puede tener cero o más parámetros.
			- Parámetros son los nombres que aparecen en la definición de una función.
			- Argumentos con los valores que pasamos a (y que recibe) una función

			REGLAS DE LOS PARÁMETROS:
			- No se especifica el tipo de los parámetros.
			- No se verifican los tipos de los argumentos.
			- No se comprueba el número de los argumentos recibidos. */

			//PARÁMETROS POR DEFECTO
			//Cuando llamamos a una función con menos argumentos de los declarados. Los valores que faltan no están definido
")
                (demo-it-insert "
	function suma (a, b){
				if (b === undefined)
					b = 0;
				return a + b;
			}

			var resultado = suma (4);
			alert (resultado);
")
                (demo-it-insert "
		//Cuando llamamos a una función con más argumentos de los que ha sido declarada. Los valores que nos llegan pueden capturarse a través de un objeto (incluido en la función) llamado arguments.
			function valores (){
				alert (\"El número de argumentos es \"+arguments.length);
				for (var i=0; i < arguments.length; i++){
					alert (\"Argumento \"+i+\"=\"+arguments[i]);
				}
			}
			valores (4, 6, 8, 2, 7, 5);
		</script>
	</body>
</html>
")
                )

(demo-it-start)

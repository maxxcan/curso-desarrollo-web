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
                (demo-it-load-file "operadoresTipo.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Operadores de tipos en Javascript</title>
	</head>")
                (demo-it-insert "
<body>
		<script>
			//TYPEOF: nos devuelve el tipo de dato de una variable o dato
			var cadena = \"Ada Lovelace\"; //Devuelve string
			var numero = 3.14; //Devuelve numbre
			var bool = true; //Devuelve boolean
			var lista = [1, 2, 3, 4]; //Devuelve object
			var registro = {nombre: \"Ada\", apellido: \"Lovelace\"}; //Devuelve object
			var fecha = new Date; //Devuelve object
			var miFuncion = function miFun () {alert (\"Hola\");}; //Devuelve function
			var sinDefinir; //Devuelve undefined
			var vacia = null; //Devuelve object
")
                (demo-it-insert "
	//INSTANCEOF: nos devuelve true si un objeto es una instancia de otro especificado
			var animales = [\"perro\", \"gato\", \"hamster\"];
			alert (animales instanceof Object); //Devuelve true
			alert (animales instanceof Array); //Devuelve true
			alert (animales instanceof Number); //Devuelve false
		</script>
	</body>
</html>
")


)
(demo-it-start)

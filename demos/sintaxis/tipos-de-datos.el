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
                (demo-it-load-file "tiposDeDatos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Tipos de datos en Javascript</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
			// CADENAS o STRINGS
			var cadena = \"Ada\";
			var cadena2 = ' Lovelace';
			var cadena3 = \"Ada 'Lovelace'\";

")
                (demo-it-insert "
			// NÚMEROS
			var entero = 3;
			var decimal = 3.56;
			var cientifica = 12e-5;
")
                (demo-it-insert "
		// BOOLEANOS
			var cierto = true;
			var falso = false;
")
                (demo-it-insert "
	// ARRAY
			var lista = [1, \"Hola\", 6, \"Caracola\"];
")
                (demo-it-insert "
	// OBJETOS
			var animal = {nombre: \"Lola\", tipo: \"Hamster\", raza: \"Ruso\", edad:1};
")
                (demo-it-insert "
	// OPERADOR typeof
			alert (typeof cadena); //Devuelve string
			alert (typeof cierto); //Devuelve boolean
			alert (typeof animal); //Tanto arrays como objetos devuelve object
")
                (demo-it-insert "
	// UNDEFINED
			var objetoSinDefinir;
			alert (objetoSinDefinir); //Devuelve undefined

			// VACIO
			var cadena4 = \"\";
			alert (\"Cadena: \"+cadena4 + \" tipo: \"+typeof cadena4);
")
                (demo-it-insert "
	// NULL
			var animal = null;
			alert (\"Animal: \"+animal+ \" tipo: \"+typeof animal);

			//NULOS vs NO DEFINIDOS
			typeof undefined; //Devuelve undefined
			typeof null; //Devuelve objeto
			null === undefined; //Devuelve false
			null == undefined; //Devuelve true

		</script>
	</body>
</html>
")

)
(demo-it-start)

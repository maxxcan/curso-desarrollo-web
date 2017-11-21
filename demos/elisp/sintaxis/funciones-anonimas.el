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
                (demo-it-load-file "../../html/sintaxis/funcionesAnonimas.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Funciones anónimas </title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
		//Sintaxis de una función no anónima
		//function nombre (<parámetros>) { <instrucciones> }

		//SINTAXIS DE UNA FUNCIÓN ANÓNIMA
		var producto = function (a, b) { return a * b;};
		var resultado = producto(3,6);
		alert (resultado);
")
                (demo-it-insert "
	//EL CONSTRUCTOR FUNCTION()
		var miFuncion = new Function (\"a\", \"b\", \"return a*b;\");
		var resultado2 = miFuncion(5,7);
		alert (resultado2);
")
                (demo-it-insert "
		//FUNCIONES ANÓNIMAS AUTOINVOCADAS
		(function () { alert (\"¡Hola!\");}());

		</script>
	</body>
</html>
")

                )

(demo-it-start)

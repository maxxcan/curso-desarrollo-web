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
                (demo-it-load-file "../../html/sintaxis/operadoresAsignacion.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Operadores de asignación en Javascript</title>
	</head>

	<body>
		<script>
			//OPERADORES DE ASIGNACIÓN: =, +=, -=, *=, /=, %= ")
                (demo-it-insert "
	//EJEMPLO DE OPERADOR DE ASIGNACION =
			var x = 10;")
                (demo-it-insert "
	//EJEMPLO DE OPERADOR DE ASIGNACION +=
			x+=5; // x = x + 5
			alert (\"El valor de x es \"+x);
")
                (demo-it-insert "
//EJEMPLO DE OPERADOR DE ASIGNACION *=
			var y = 10;
			y*=5; // y = y * 5
			alert (\"El valor de y es \"+y);
")
                (demo-it-insert "
	//EJEMPLO DE OPERADOR DE ASIGNACION %=
			var z = 10;
			z%=5; 
			alert (\"El valor de z es \"+z);
		</script>
	</body>
</html>
")
)
(demo-it-start)

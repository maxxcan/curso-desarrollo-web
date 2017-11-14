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
                (demo-it-load-file "operadoresAritmeticos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Operadores aritméticos en Javascript</title>
	</head>

	<body>")
                (demo-it-insert "
	<script>
		// OPERADORES ARITMÉTICOS: +, -, *, /, %, ++, --.

		//UTILIZACION
		var x = 5; var y = 2;
		var dosNumeros = 1 + 7;
		var dosVariables = x + y;
		var numeroVariable = 4 + x;

		alert(\"La variable dosNumeros contiene \"+dosNumeros);
		alert(\"La variable dosVariables contiene \"+dosVariables);
		alert(\"La variable numeroVariable contiene \"+numeroVariable);
")
                (demo-it-insert "
	//EJEMPLOS DE OPERADORES BINARIOS
		var suma = x + y;
		var resta = x - y;
		var multiplicacion = x * y;
		var division = x / y;
		var modulo = x % y;

		alert (\"La suma es \"+suma);
		alert (\"La resta es \"+resta);
		alert (\"El producto es \"+multiplicacion);
		alert (\"La division es \"+division);
		alert (\"El modulo es \"+modulo);
")
                (demo-it-insert "
//EJEMPLOS DE OPERADORES UNARIOS
		var a = 8;
		alert (\"El valor inicial de a es \"+a);
		++a;
		alert (\"El valor de a después del incremento es \"+a);
		--a;
		alert (\"El valor de a después del decremento es \"+a);

		</script>
	</body>
</html>
")

)
(demo-it-start)

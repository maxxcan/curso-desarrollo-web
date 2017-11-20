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
                (demo-it-load-file "condicionalesIfElse.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Condicionales. Sentencias if...else</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
			//IF: especifica un bloque de código que se ejecuta si una condición es cierta.
			/* SINTAXIS:
			if (<condicion>){
				//Instrucciones si la condición es verdadera
			} */

			var nota = 8;
			if (nota >= 5){
				alert (\"Has aprobado\");
			}
")
                (demo-it-insert "
	//ELSE: especifica un bloque de código que se ejecuta si una condición es falsa.
			/* SINTAXIS:
			if (<condicion>){
				//Instrucciones si la condición es verdadera
			} else {
				//Instrucciones si la condición es falsa
			}*/

			var nota2 = 4;
			if (nota2 >=5){
				alert (\"Has aprobado\");
			} else {
				alert (\"Has suspendido\");
			}
")
                (demo-it-insert "
	//ELSE IF: especifica una nueva condición si la primera es falsa.
			/* SINTAXIS:
			if (<condicion>){
				//Instrucciones si la condición 1 es verdadera
			} else if (<condicion 2>) {
				//Instrucciones si la condición 1 es falsa y la condición 2 es verdadera.
			} else {
				//Instrucciones si la condición 1 es falsa y la condición 2 es falsa.
			} */

			var nota3 = 9;
			if (nota3 < 5) {
				alert (\"Has suspendido\");
			} else if (nota3 == 5){
				alert (\"Has sacado un suficiente\");
			} else if (nota3 == 6){
				alert (\"Has sacado un bien\");
			} else if (nota3 == 7 || nota3 == 8){
				alert (\"Has sacado un notable\");
			} else {
				alert (\"Has sacado un sobresaliente\");
			}


		</script>
	</body>
</html>
")
                )

(demo-it-start)

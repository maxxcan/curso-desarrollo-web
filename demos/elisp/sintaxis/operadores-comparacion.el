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
                (demo-it-load-file "../../html/sintaxis/operadoresComparacion.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Operadores de comparación</title>
	</head>

	<body>
		<script>")
                (demo-it-insert "
//Operador de igualdad (==)
			alert(\"x==8 es \"+(x==8)); //Devuelve false
			alert(\"x==5 es \"+(x==5)); //Devuelve true
			alert(\"x=='5' es \"+(x=='5')); //Devuelve true

")
                (demo-it-insert "
	//Operador de igualdad estricta (===)
			alert(\"x===8 es \"+(x===8)); //Devuelve false
			alert(\"x===5 es \"+(x===5)); //Devuelve true
			alert(\"x==='5' es \"+(x==='5')); //Devuelve false
")
                (demo-it-insert "
//Operador de desigualdad (!=)
			alert(\"x!=8 es \"+(x!=8)); //Devuelve true
			alert(\"x!=5 es \"+(x!=5)); //Devuelve false
			alert(\"x!='5' es \"+(x!='5')); //Devuelve false
")
                (demo-it-insert "
	//Operador de desigualdad estricta (!==)
			alert(\"x!==8 es \"+(x!==8)); //Devuelve true
			alert(\"x!==5 es \"+(x!==5)); //Devuelve false
			alert(\"x!=='5' es \"+(x!=='5')); //Devuelve true
")
                (demo-it-insert "
	//Operador de mayor que (>)
			alert(\"x>8 es \"+(x>8)); //Devuelve false

			//Operador de menor que (<)
			alert(\"x<8 es \"+(x<8)); //Devuelve true

			//Operador de mayor o igual que (>=)
			alert(\"x>=8 es \"+(x>=8)); //Devuelve false

			//Operador de menor o igual que (<=)
			alert(\"x<=8 es \"+(x<=8)); //Devuelve true
		</script>
	</body>
</html>
")

)
(demo-it-start)

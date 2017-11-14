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
    (kill-buffer "variables.html")))

(defun titulo()
  "Muestra el título de la presentación"
  (demo-it-title-screen "titulo.org" 3))

(defun final()
  "Muestra el título de la presentación"
  (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "variables.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Variables en Javascript</title>
	</head>

	<body>
		<p id=\"parrafo1\"></p>
		<p id=\"parrafo2\"></p>
		<p id=\"parrafo3\"></p>")
                (demo-it-insert "
	<script>
			/* VARIABLES EN JAVASCRIPT
				- Identificadores únicos.
				- Recomendable utilizar identificadores descriptivos.
				- Empiezan por letra, $, _ y siguen con letra, número, $ o _.
				- Pueden contener cadenas (\"\", '') y números (enteros o decimales)
				- Son sensibles a las mayúsculas (nombre != NOMBRE != Nombre)
				- No pueden utilizarse palabras reservadas */
")
                (demo-it-insert "
	//Declaración de variable
				var nombre;

				//Mostramos el valor de la variable (undefined)
				document.getElementById(\"parrafo1\").innerHTML = nombre;

				//Asignación de valor a una variable
				nombre = \"Ada\";

				//Mostramos el valor de la variable
				document.getElementById(\"parrafo2\").innerHTML = nombre;
")
                (demo-it-insert "
	//Declaración de variables en una sola sentencia
				//var pais, nacimiento;
				var pais=\"Reino Unido\", 
					nacimiento = 1815;
")
                (demo-it-insert "
	//Asignación de operaciones a una variable
				var nombreApellido = \"Ada\" + \" \" + \"Lovelace\";
				var fallecimiento = nacimiento + 37;

				document.getElementById(\"parrafo3\").innerHTML = nombreApellido + \" nació en \" + pais + \" en \" + nacimiento + \" y murió en \" + fallecimiento;

		</script>
	</body>
</html>
")

)
(demo-it-start)

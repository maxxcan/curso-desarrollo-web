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
                (demo-it-load-file "ambitoVariables.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Ámbito de variables</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
			//VARIABLES LOCALES
			/* - Se define dentro de una función.
			   - Tienen ámbito local en la función.
			   - Son accesibles únicamente dentro de la función.
			   - Podemos declarar variables con el mismo nombre en diferentes funciones.
			   - Variable local desaparece cuando finaliza la función. */
			   function saludar(){
			   	var saludo = \"Hola\";
			   	alert (saludo);
			   }
			   saludar();
")
                (demo-it-insert "
	//VARIABLES GLOBALES
			/* - Se definen fuera de las funciones.
			   - Tienen ámbito global (en toda la página).
			   - Son accesibles desde fuera y dentro de las funciones.
			   - Variables globales desaparecen cuando se sale de la página. */
			   var despedida = \"Adios\";
			   function despedir(){
			   	alert (despedida);
			   }
			   despedir();
")
                (demo-it-insert "
	//VARIABLES AUTOMÁTICAMENTE GLOBALES
			// - Si asignamos un valor a una variable no declarada se convierte en globar.
			function preguntar(){
				pregunta = \"¿De qué color es el caballo blanco de Santiago?\";
			}
			preguntar();
			alert(pregunta);
")
                (demo-it-insert "
	//VARIABLES LOCALES Y GLOBALES CON EL MISMO NOMBRE
			var miVariable = \"Fuera\";
			function ambito(){
				var miVariable = \"Dentro\";
				alert (miVariable);
			}
			alert(miVariable); //Devuelve Fuera
			ambito(); //Devuelve Dentro
			alert(miVariable); //Devuelve Fuera
")
                (demo-it-insert "
	//VARIABLE GLOBAL REDEFINIDA DENTRO DE UNA FUNCIÓN
			var miVariable2 = \"Fuera\";
			function ambito2(){
				miVariable2 = \"Dentro\";
				alert (miVariable2);
			}
			alert(miVariable2); //Devuelve Fuera
			ambito2(); //Devuelve Dentro
			alert(miVariable2); //Devuelve Dentro 
		</script>
	</body>
</html>
")
                )

(demo-it-start)

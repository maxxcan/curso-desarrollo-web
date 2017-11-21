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
                (demo-it-load-file "../../html/sintaxis/saltosBreakContinue.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Saltos. Sentencias break y continue</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
		/* BREAK: salir o saltar fuera un bucle, finalizándolo.
		   CONTINUE: saltar hasta la siguiente iteración del bucle; permite saltar una o más iteraciones. */

		// Ejemplo de bucle con break
		  var i;
		  for (i = 0; i < 10; i++){
		  	if (i == 3){ 
		  		break;
		  	}
		  	alert (\"i = \"+i);
		  }
")
                (demo-it-insert "
	//Ejemplo de bucle con continue
		 var j;
		  for (j = 0; j < 10; j++){
		  	if (j == 3 || j == 5){ 
		  		continue;
		  	}
		  	alert (\"j = \"+j);
		  }
")
                (demo-it-insert "
	  /*ETIQUETAS: preceder una sentencia con el nombre de la etiqueta seguido de dos puntos.
		  - Break sin etiquetas se puede utilizar en bucles o switch.
		  - Break con eitqueta también se puede utilizar en un bloque de sentencias etiquetado.
		  - Continue: la etiqueta es opcional. Siempre debe estar dentro un bucle.
		   */
")
                (demo-it-insert "
 //Ejemplo de break con etiquetas
		  var animales = [\"perro\", \"gato\", \"hamster\"];

		  ver_animales:
		  {
		  	alert (animales[0]);
		  	alert (animales[1]);
		  	break ver_animales;
		  	alert (animales[2]);
		  }
")
                (demo-it-insert "
  //Ejemplo de continue con etiquetas
		  var k;
		  bucle: 
		  	for (k = 0; k < 10; k++){
		  	if (k == 3 || k == 5){ 
		  		continue bucle;
		  	}
		  	alert (\"k = \"+k);
		}

		</script>
	</body>
</html>
")
                )

(demo-it-start)

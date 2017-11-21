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
                (demo-it-load-file "../../html/sintaxis/condicionalesSwitch.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Condicionales. Sentencia switch</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
			 /* SWITCH:
			 - Se utiliza para hacer diferentes acciones basadas en diferentes condiciones. 
			 - La condición se evalúa una única vez.
			 - Si hay alguna coincidencia con algún valor se ejecuta el bloque de código correspondiente.
			 - Break: sale del bloque switch.
			 - Default: se ejecuta en caso de que la expresión no coincide con ningún valor.
			 */

			 /* SINTAXIS
			 switch (<expresión>){
				case valor_1: 
					//Instrucciones para valor_1
					break;
				case valor_n:
					//Instrucciones para valor_n
					break;
				default: 
					//Instrucciones en caso de que no se cumpla ninguna condición.
			 }*/
")
                (demo-it-insert "
 var nota = 11;
			 var mensaje = \"\";
			 switch (nota){
			 	case 0: 
			 	case 1: 
			 	case 2: 
			 	case 3: 
			 	case 4: 
			 		mensaje = \"Suspenso\";
			 		break;
			 	case 5: 
			 		mensaje = \"Suficiente\";
			 		break;	
			 	case 6: 
			 		mensaje = \"Bien\";
			 		break;
			 	case 7: 
			 	case 8: 
			 		mensaje = \"Notable\";
			 		break;
			 	case 9: 
			 	case 10: 
			 		mensaje = \"Sobresaliente\";
			 		break;
			 	default:
			 		mensaje = \"El valor no es válido\";
			 }
			 alert (mensaje);

		</script>
	</body>
</html>
")

                )

(demo-it-start)

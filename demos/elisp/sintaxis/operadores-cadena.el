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
                (demo-it-load-file "../../html/sintaxis/operadoresCadena.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Operadores de cadena</title>
	</head>

	<body>
		<script>")
                (demo-it-insert "
//OPERADOR +
		var nombre = \"Ada\";
		var apellido = 'Lovelace';
		var completo = nombre + \" \" + apellido;
		alert (completo);
")
                (demo-it-insert "
		//OPERADOR DE ASIGNACION +=
		var texto = \"ABCD\";
		texto += \"EFGH\"; //texto = texto + \"EFGH\";
		alert(texto);
")
                (demo-it-insert "
	//SUMAR NÚMEROS Y CADENAS
		var resultado = 4 + 5 + \"Ada Lovelace\";
		alert (resultado);
		</script>
	</body>
</html>
")
)
(demo-it-start)

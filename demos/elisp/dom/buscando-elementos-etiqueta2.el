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
    (kill-buffer "introduccion-dom.html")))

(defun titulo()
  "Muestra el título de la presentación"
  (demo-it-title-screen "titulo.org" 3))

(defun final()
  "Muestra el título de la presentación"
  (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (titulo)
                (demo-it-load-file "../../html/dom/buscandoElementosEtiqueta2.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
</head>

<body>

<h3>En el siguiente ejemplo buscaremos todos los elementos con el id=”main” y entonces todos los elementos <p> dentro del “main”:</h3>")
                (demo-it-insert "
<p>Hola Mundo!</p>

<div id=\"main\">
<p>El DOM es muy útil</p>
<p>Este ejemplo demuestra el método <b>getElementsByTagName</b></p>
</div>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
var x = document.getElementById(\"main\");
var y = x.getElementsByTagName(\"p\");
document.getElementById(\"demo\").innerHTML = 
'El primer párrafo (index 0) dentro de \"main\" es: ' + y[0].innerHTML;
</script>

</body>
</html>")
                )
(demo-it-start)

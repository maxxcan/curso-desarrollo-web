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
                (demo-it-load-file "../../html/caracteres/concatenarTexto.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\"
</head>
<body>

<h2>Concatenando texto en Javascript</h2>

<p id=\"demo\"></p>")

                (demo-it-insert "
<script>
var texto1 = \"Hola, \";
var texto2 = \"Mundo!\";
var texto3 = texto1.concat(\" \", texto2);

document.getElementById(\"demo\").innerHTML = texto3;
</script>

</body>
</html>

")
                )
(demo-it-start)

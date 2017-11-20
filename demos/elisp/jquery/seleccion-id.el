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
                (demo-it-load-file "seleccionPorId.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Seleccionando por ID en JQuery</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    // Cambia el color del elemento con id marca
    $(\"#marca\").css(\"background\", \"yellow\");
});
</script> 
</head>")
                (demo-it-insert "
<body>
    <p id=\"marca\">Esto es un párrafo.</p>
    <p>Esto es otro párrafo.</p>
    <p>Y otro más.</p>
    <p><strong>Nota:</strong> El valor del id debe ser único.</p>
</body>
</html>")
                )
(demo-it-start)

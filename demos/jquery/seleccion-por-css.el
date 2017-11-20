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
                (demo-it-load-file "seleccionPorCss.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Seleccionando elementos por el selector</title>
<script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    // Combinadmos el elemento párrafo con la clase marca
    $(\"p.mark\").css(\"background\", \"yellow\");")
                (demo-it-insert "
 // Combinamos span con el id marca
    $(\"#mark span\").css(\"background\", \"yellow\");")
                (demo-it-insert "
    // Combinamos dos elementos ul e il
    $(\"ul li\").css(\"background\", \"yellow\");")
                (demo-it-insert "
    // Combinamos dos elementos y el id marca
    $(\"ul#mark li\").css(\"background\", \"red\");")
                (demo-it-insert "
    // Combinamos dos marcas y la clase marca
    $(\"ul.mark li\").css(\"background\", \"green\")
});
</script>
</head>")
                (demo-it-insert "<body>
    <p>Esto es un párrafo.</p>
    <p>Esto es otro párrafo.</p>
    <p>Otro más.</p>
    <ul>
        <li>Item uno</li>
        <li>Item dos</li>
        <li>Item tres</li>
    </ul>
    <ul id=\"marca\">
        <li>Lista uno</li>
        <li>Lista dos</li>
        <li>Lista tres</li>
    </ul>
    <ul class=\"marca\">
        <li>Y otro</li>
        <li>Pozi</li>
        <li>Pono</li>
    </ul>
    <p>Go to <a href=\"#\">Inicio</a></p>
</body>
</html>")
                )
(demo-it-start)


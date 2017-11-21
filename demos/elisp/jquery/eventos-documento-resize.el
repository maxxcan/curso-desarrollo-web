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
                (demo-it-load-file "../../html/jquery/eventosDocumentoResize.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejecutando una función cuando redimensionamos la ventana</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        padding: 20px;
        font: 20px sans-serif;
        background: #f0e68c;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(window).resize(function() {
        $(window).bind(\"resize\", function(){
            $(\"p\").text(\"Altura de la ventana: \" + $(window).width() + \", \" +
 \"Anchura de la ventana: \" + $(window).height());
        });
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <p>Cambia el tamaño de la ventana</p>
</body>
</html>")

)
(demo-it-start)


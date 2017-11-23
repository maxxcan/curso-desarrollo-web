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
                (demo-it-load-file "../../html/jquery/metodoCss.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Obteniendo valores de una propiedad CSS</title>
<style type=\"text/css\">
    div{
        width: 100px;
        height: 100px;
        margin: 10px;
        cursor: pointer;
        display: inline-block;
    }
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"div\").click(function(){
        var color = $(this).css(\"background-color\");
        $(\"#result\").html(color);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <div style=\"background-color:orange;\"></div>
    <div style=\"background-color:#ee82ee;\"></div>
    <div style=\"background-color:rgb(139,205,50);\"></div>
    <div style=\"background-color:#f00;\"></div>
    <p>El valor del color de fondo es: <b id=\"result\"></b></p>
    </body>
    </html>")
                )
(demo-it-start)


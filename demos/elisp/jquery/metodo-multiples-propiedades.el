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
                (demo-it-load-file "../../html/jquery/metodoCssMultiplesPropiedades.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Establecer el valor CSS de múltiples propiedades</title>
<style type=\"text/css\">
    p{
        font-size: 18px;
        font-family: Arial, sans-serif;
    }
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"button\").click(function(){
        $(\"p\").css({\"background-color\": \"yellow\", \"padding\": \"20px\"});
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <h1>Saludos desde la tierra</h1>
    <p style=\"background-color:orange;\">Esto es un párrafo.</p>
    <p style=\"background-color:#ee82ee;\">Esto es otro párrafo.</p>
    <p style=\"background-color:rgb(139,205,50);\">Y otro más.</p>
    <p>El último párrafo.</p>
    <button type=\"button\">Añadiendo estilo CSS</button>
    </body>
    </html>")
                )
(demo-it-start)


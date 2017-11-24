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
                (demo-it-load-file "../../html/jquery/metodoCssEstablecer.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Estableciendo valores de una propiedad CSS</title>
<style type=\"text/css\">
    .box{
        width: 100px;
        height: 100px;
        margin: 10px;
        cursor: pointer;
        border: 1px solid #cdcdcd;
        display: inline-block;
    }
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".box\").click(function(){
        $(this).css(\"background-color\", \"red\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <div class=\"box\"></div>
    <div class=\"box\"></div>
    <div class=\"box\"></div>
    <div class=\"box\"></div>
	<p><strong>Aviso:</strong> Pulsa dentro de la caja vacía para llenarla con
 color.</p>
</body>
</html>")
                )
(demo-it-start)


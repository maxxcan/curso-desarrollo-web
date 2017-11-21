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
                (demo-it-load-file "../../html/jquery/eventosDocumentoScroll.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejecutando una función cuando hacemos scroll</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        width: 100%;
        padding: 50px 0;
        text-align: center;
        font: bold 34px sans-serif;
        background: #f0e68c;
        position: fixed;
        top: 50px;
        display: none;
    }
    .dummy-content{
        height: 600px;
        font: 34px sans-serif;
        text-align: center;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(window).scroll(function() {
        $(\"p\").show().fadeOut(\"slow\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <p>Vamos que nos vamos!</p>
    <div class=\"principal\">Volando voy...</div>
    <div class=\"principal\">Volando vengo...</div>
    <div class=\"principal\">Por el camino...</div>
    <div class=\"principal\">Yo me entretengooo.</div>
    <div class=\"principal\">salalaaaaa.</div>
</body>
</html>")

)
(demo-it-start)


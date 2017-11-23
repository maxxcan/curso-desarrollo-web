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
                (demo-it-load-file "../../html/jquery/metodoAppend.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Añadiendo clases a un elemento</title>
<style type=\"text/css\">
    .page-header{
        color: red;
        text-transform: uppercase;
    }
    .highlight{
        background: yellow;
    }
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"button\").click(function(){
        $(\"h1\").addClass(\"page-header highlight\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <h1>Saluditos</h1>
    <p>Ganicas locas de que no haga tanto calor.</p>
    <button type=\"button\">Añade clases</button>
</body>
</html>")
                )
(demo-it-start)


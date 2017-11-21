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
                (demo-it-load-file "../../html/jquery/efectosFadeto.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo del efecto fade con FadeTo()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        display: none;
        padding: 15px;
        background: #DDA0DD;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    // Fade con diferentes opacidades
    $(\".to-btn\").click(function(){
        $(\"p.none\").fadeTo(\"fast\", 0);
        $(\"p.partial\").fadeTo(\"slow\", 0.5);
        $(\"p.complete\").fadeTo(2000, 1);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"to-btn\">Fade para mostrar los distintos párrafos</button>
    <p class=\"none\">Esto es un párrafo.</p>
    <p class=\"partial\">Esto es otro párrafo.</p>
    <p class=\"complete\">Y párrafo.</p>
</body>
</html>")


)
(demo-it-start)


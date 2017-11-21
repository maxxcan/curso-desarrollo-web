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
                (demo-it-load-file "../../html/jquery/animacionStop.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de parada de una animación con stop()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    img{
        position: relative; /* propiedad requerida */
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    // Empieza la animación
    $(\".start-btn\").click(function(){
      $(\"img\").animate({left: \"+=150px\"}, 2000);
    });")
                (demo-it-insert "
    // Stop running animation
    $(\".stop-btn\").click(function(){
      $(\"img\").stop();
    });")
                (demo-it-insert "
    // Start animation in the opposite direction
    $(\".back-btn\").click(function(){
      $(\"img\").animate({left: \"-=150px\"}, 2000);
    });")
                (demo-it-insert "
    // Reset to default
    $(\".reset-btn\").click(function(){
       $(\"img\").animate({left: \"0\"}, \"fast\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"start-btn\">Empezar</button>
    <button type=\"button\" class=\"stop-btn\">Parar</button>
    <button type=\"button\" class=\"back-btn\">Atrás</button>
    <button type=\"button\" class=\"reset-btn\">Reset</button>
    <p>
    	<img src=\"img/toad.png\" alt=\"Toad\">
    </p>
</body>
</html>")
)
(demo-it-start)


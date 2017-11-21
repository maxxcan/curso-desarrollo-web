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
                (demo-it-load-file "../../html/jquery/efectosSliding.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de los métodos slideUp() y slideDown()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        padding: 15px;
        background: #B0C4DE;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    // Efecto de hacia arriba
    $(\".up-btn\").click(function(){
        $(\"p\").slideUp();
    });")
                (demo-it-insert "
 // Efecto de hacia abajo
    $(\".down-btn\").click(function(){
        $(\"p\").slideDown();
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"up-btn\">Tira parriba</button> 
    <button type=\"button\" class=\"down-btn\">Tira pabajo</button>
    <p>Esto es un párrafo.</p>
    <p>Esto es otro párrafo.</p>
</body>
</html>")


)
(demo-it-start)


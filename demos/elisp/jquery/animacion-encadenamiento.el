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
                (demo-it-load-file "../../html/jquery/animacionEncadenamiento.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejemplo de un método de encadenamiento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
/* Algunos estilos bonitos */
p {
    width: 200px;
	padding: 40px 0;
	font: bold 24px sans-serif;
	text-align: center;
    background: #aaccaa;
    border: 1px solid #63a063;
    box-sizing: border-box;
}
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".start\").click(function(){
        $(\"p\").animate({width: \"100%\"}).animate({fontSize: \"46px\"}).animate({borderWidth: 30});
    });
    $(\".reset\").click(function(){
        $(\"p\").removeAttr(\"style\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <p>Hola fondo norteee!</p>
    <button type=\"button\" class=\"start\">Empezar encadenamiento</button>
    <button type=\"button\" class=\"reset\">Reset</button>
</body>
</html>")

)
(demo-it-start)


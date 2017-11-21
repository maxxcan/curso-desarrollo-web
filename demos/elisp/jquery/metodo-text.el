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
                (demo-it-load-file "../../html/jquery/metodoText.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo cómo obtener texto con text()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".btn-one\").click(function(){
        var str = $(\"p\").text();
        alert(str);
    });
")
                (demo-it-insert "
 $(\".btn-two\").click(function(){
       var str = $(\"p:first\").text();
       alert(str);
    });")
                (demo-it-insert "
 $(\".btn-three\").click(function(){
       var str = $(\"p.extra\").text();
       alert(str);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"btn-one\">Obteniendo el texto de todos los párrafos</button>
    <button type=\"button\" class=\"btn-two\">Obteniendo el texto del primer párrafo</button>
	<button type=\"button\" class=\"btn-three\">Obteniendo el texto del último párrafo</button>
    <p>Esto es un párrafo.</p>
    <p>Esto es otro párrafo.</p>
	<p class=\"extra\">Y uno más.</p>
</body>
</html>")

)
(demo-it-start)


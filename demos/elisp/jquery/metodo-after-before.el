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
                (demo-it-load-file "../../html/jquery/metodoAfterBefore.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Insertando contenido antes y después de un elemento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    // Add content after a div container on document ready
    $(\"#container\").after(\"<p>— The End —</p>\");")
                (demo-it-insert "
// Add content before a div container on document ready
    $(\"#container\").before(\"<p>— Demo Text —</p>\");")
                (demo-it-insert "
    // Add content after heading on button click
    $(\"button.insert-after\").click(function(){
        $(\"h1\").after('<img src=\"/examples/images/marker-right.gif\" alt=\"Symbol\">');
    });")
                (demo-it-insert "
 // Add content before heading on button click
    $(\"button.insert-before\").click(function(){
        $(\"h1\").before('<img src=\"/examples/images/marker-left.gif\" alt=\"Symbol\">');
    });
});
</script>")
                (demo-it-insert "
<style type=\"text/css\">
    h1{
        display: inline-block; 
    }
    body{
        text-align: center;
    }
</style>
</head>")
                (demo-it-insert "
<body>
    <h1>Bienvenidos</h1>
    <hr>
    <button type=\"button\" class=\"insert-before\">Inserta Antes</button>
    <button type=\"button\" class=\"insert-after\">Inserta Después</button>
    <hr>
    <div id=\"container\">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem
 tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis
 vel, semper malesuada ante. Vestibulum id metus ac nisl bibendum scelerisque
 non non purus. Suspendisse varius nibh non aliquet sagittis. In tincidunt orci
 sit amet elementum vestibulum. Vivamus fermentum in arcu in aliquam. Quisque
 aliquam porta odio in fringilla. Vivamus nisl leo, blandit at bibendum eu,
 tristique eget risus. Integer aliquet quam ut elit suscipit, id interdum neque
 porttitor. Integer faucibus ligula.</p>
       
    </div>
</body>
</html>")
                )
(demo-it-start)


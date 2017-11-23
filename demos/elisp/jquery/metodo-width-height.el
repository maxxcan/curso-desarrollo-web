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
                (demo-it-load-file "../../html/jquery/metodoWidthyHeight.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Obteniendo la altura y anchura de un elemento</title>
<style type=\"text/css\">
    #box{
        width: 300px;
        height: 200px;
        padding: 25px;
        text-align: justify;
        border: 10px solid #c6b51a;
        background: #f0e68c;
        margin: 15px;
    }
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"button\").click(function(){
        var divWidth = $(\"#box\").width();
        var divHeight = $(\"#box\").height();
        $(\"#result\").html(\"Altura: \" + divWidth + \", \" + \"Anchura: \" + divHeight);
    });
});
</script>")
                (demo-it-insert "
</head>
<body>
    <div id=\"box\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam
 eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec
 turpis vel, semper malesuada ante. Vestibulum id metus ac nisl bibendum
 scelerisque non non purus. Suspendisse varius nibh non aliquet sagittis. In
 tincidunt orci sit amet elementum vestibulum. Vivamus fermentum in arcu in
 aliquam. Quisque aliquam porta odio in fringilla non purus nisld Dapibus nec
 turpis vel, semper malesuada ant.</div>
    <button type=\"button\">Obtén la altura y anchura</button>
    <p id=\"result\"></p>
</body>
</html>")
                )
(demo-it-start)


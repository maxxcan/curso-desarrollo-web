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
                (demo-it-load-file "../../html/jquery/metodoAppendYPrepend.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Insertar múltiples elementos con append() y prepend()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    $(\"button\").click(function(){
        var newHeading = \"<h1>Nota importante:</h1>\";
        var newParagraph = document.createElement(\"p\");
		newParagraph.innerHTML = \"<em>Lorem Ipsum is dummy text...</em>\";
        var newImage = $('<img src=\"/images/smiley.png\" alt=\"Symbol\">');
        $(\"body\").append(newHeading, newParagraph, newImage);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\">Inserta Contenido</button>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem
 tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis
 vel, semper malesuada ante, metus ac nisl bibendum.</p>
</body>
</html>")
                )
(demo-it-start)


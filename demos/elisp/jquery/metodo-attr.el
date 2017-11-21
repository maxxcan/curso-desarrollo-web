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
                (demo-it-load-file "../../html/jquery/metodoAttr.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Obteniendo el valor de un atributo de un elemento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".btn-one\").click(function(){
        var str = $(\"a\").attr(\"href\");
        alert(str);
    });")
                (demo-it-insert "
    $(\".btn-two\").click(function(){
        var str = $(\"img#sky\").attr(\"alt\");
        alert(str);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"btn-one\">Obtenemos la referencia del enlace</button>
    <button type=\"button\" class=\"btn-two\">Obtenemos el valor del atributo ALT</button>
    <p><a href=\"https://www.fsf.com/\">Free Software Foundation</a></p>
    <img id=\"sky\" src=\"/examples/images/sky.jpg\" alt=\"Cielo nuboso\">
</body>
</html>")
                )
(demo-it-start)


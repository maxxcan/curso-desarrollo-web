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
                (demo-it-load-file "../../html/jquery/metodoHtml.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Obteniendo contenido HTML de un elemento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".btn-one\").click(function(){
        var str = $(\"p\").html();
        alert(str);
    });")
                (demo-it-insert "
    $(\".btn-two\").click(function(){
        var str = $(\"#container\").html();
        alert(str);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"btn-one\">Obtener el contenido HTML de un párrafo</button>
    <button type=\"button\" class=\"btn-two\">Obtener el contenido HTML del contenedor</button>
    <div id=\"container\">
        <h1>Hola People!</h1>
        <p>Tengo un <b>pie</p> más grande que otro.</p>
    </div>
</body>
</html>")

)
(demo-it-start)


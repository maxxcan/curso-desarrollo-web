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
                (demo-it-load-file "../../html/jquery/animacionValoresRelativos.html")
                (demo-it-insert "<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de una animación con valores relativos</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    .box{
        width: 100px;
        height: 100px;
        background: #9d7ede;
        margin-top: 30px;
        position: relative; /* Required to move element */
    }
</style>")
                (demo-it-insert " 
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"button\").click(function(){
        $(\".box\").animate({
            top: \"+=50px\",
            left: \"+=50px\",
            width: \"+=50px\",
            height: \"+=50px\"
        });
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\">Empezar animación</button>
    <div class=\"box\"></div>
</body>
</html>")

)
(demo-it-start)


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
                (demo-it-load-file "../../html/jquery/metodoWrap.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de envolver un elemento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    // Envolviendo un div con otro div
    $(\".container\").wrap('<div class=\"wrapper\"></div>');
    
    // Envolviendo un párrafo al pulsar un botón
    $(\"button\").click(function(){
        $(\"p\").contents().wrap(\"<em><b></b></em>\");
    });
});
</script>")
                (demo-it-insert "
<style type=\"text/css\">
    .wrapper{
        padding: 20px;
        background: #f0e68c;
        margin: 10px 0;
    }
    .container{
        padding: 15px;
        background: #fff;
        font-size: 24px;
    }
</style>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\">Púlsame para envolver</button>
    <div class=\"container\">
        <p>Esto es un texto de prueba.</p>
    </div>
</body>
</html>")
                )
(demo-it-start)


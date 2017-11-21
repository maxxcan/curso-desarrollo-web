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
                (demo-it-load-file "../../html/jquery/metodoValEstablecer.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Estableciendo los valores en un formulario</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    $(\"button\").click(function(){
        var text = $(this).text();
        $('input[type=\"text\"]').val(text);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
<h2>Cual es la misión de la NASA que más te gusta?</h2>
    <button type=\"button\">Discovery</button>
    <button type=\"button\">Atlantis</button>
    <button type=\"button\">Endeavour</button>
<p><strong><Aviso:></Aviso:> Pulsa en los botones de arriba.</p>
    <p>
        <input type=\"text\">
    </p>
</body>
</html>")

                )
(demo-it-start)


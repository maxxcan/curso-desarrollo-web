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
                (demo-it-load-file "eventosKeypress.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejecutando una función con el evento Keypress</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        padding: 10px;
        background: lightgreen;
        display: none;
    }
    div{
        margin: 20px 0;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    var i = 0;
    $('input[type=\"text\"]').keypress(function(){
        $(\"span\").text(i += 1);
        $(\"p\").show().fadeOut();
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <input type=\"text\">
    <div>Teclas Pulsadas: <span>0</span></div>
	<div><strong>Aviso:</strong> Escribe algo dentro de la caja, anda que te va a gustar....</div>
    <p>DAISYYYYY DAISYYYYY.</p>
</body>
</html>")

                )
(demo-it-start)


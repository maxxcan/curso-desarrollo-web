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
                (demo-it-load-file "../../html/jquery/metodoTextEstablecer.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Establecer texto con el métodos text()</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\".btn-one\").click(function(){
        $(\"p\").text(\"Esto es un texto de prueba.\");
    });
    $(\".btn-two\").click(function(){
        $(\"p:first\").text(\"Esto es otro texto de prueba.\");
    });
    $(\".btn-three\").click(function(){
        $(\"p.empty\").text(\"Esto es otro texto de prueba.\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"btn-one\">Establece texto en todos los párrafos</button>
    <button type=\"button\" class=\"btn-two\">Establece texto en el primer párrafo</button>
    <button type=\"button\" class=\"btn-three\">Establece texto en el párrafo vacío</button>
    <p>Esto es un párrafo.</p>
    <p>Esto es otro párrafo.</p>
    <p class=\"empty\"></p>
</body>
</html>")
)
(demo-it-start)


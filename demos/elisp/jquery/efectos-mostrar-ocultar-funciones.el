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
                (demo-it-load-file "../../html/jquery/efectosMostrarOcultarFunciones.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de llamada a otra función mietras mostramos/ocultamos</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    p{
        padding: 15px;
        background: #F0E68C;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    // Muestra un mensaje de alerta depués de esconder un párrafo
    $(\".hide-btn\").click(function(){
        $(\"p\").hide(\"slow\", function(){
            
            alert(\"El efecto de ocultación ha terminado.\");
        });
    });")
                (demo-it-insert "
 // Muestra un mensaje de alerta depués de mostrar un párrafo
    $(\".show-btn\").click(function(){
        $(\"p\").show(\"slow\", function(){
           alert(\"El efecto de mostrado ha terminado.\");
        });
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"hide-btn\">Esconde el párrafo</button> 
    <button type=\"button\" class=\"show-btn\">Muestra el párrafo</button>
    <p>Esto es un párrafo.</p>
</body>
</html>")

)
(demo-it-start)


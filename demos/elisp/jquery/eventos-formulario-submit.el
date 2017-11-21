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
                (demo-it-load-file "../../html/jquery/eventosFormularioSubmit.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejecuta una función cuando en un formulario se envía éste</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    .error{
        color: red;
    }
    .success{
        color: green;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"form\").submit(function(event){
    	var mob = /^[1-9]{1}[0-9]{9}$/;
        var currentValue = $(\"#inputMobile\").val();
        if(mob.test(currentValue) == false && currentValue != 10){
            $(\"p\").html(\"Número de teléfono inválido\").addClass(\"error\").show().fadeOut(1000);
        } else{
            $(\"p\").html(\"Número de teléfono válido\").addClass(\"success\").show().fadeOut(1000);
        }
        event.preventDefault();
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <form>
        <input type=\"text\" id=\"inputMobile\" maxlength=\"10\"
 placeholder=\"Introduce un número de teléfono\">
        <input type=\"submit\" value=\"Submit\">
        <p></p>
    </form>
</body>
</html>
")

                )
(demo-it-start)


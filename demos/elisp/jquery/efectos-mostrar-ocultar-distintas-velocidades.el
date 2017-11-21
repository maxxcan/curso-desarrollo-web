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
                (demo-it-load-file "../../html/jquery/efectosMostrarOcultarDistintasVelocidades.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Ejemplo de un efecto de mostrar/ocultar animado a distintas velocidades</title>
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
    // Escondemos los párrafos con distintas velocidades
    $(\".hide-btn\").click(function(){
        $(\"p.normal\").hide();
        $(\"p.fast\").hide(\"fast\");
        $(\"p.slow\").hide(\"slow\");
        $(\"p.very-fast\").hide(50);
        $(\"p.very-slow\").hide(2000);
    });")
                (demo-it-insert "
$(\".show-btn\").click(function(){
        $(\"p.normal\").show();
        $(\"p.fast\").show(\"fast\");
        $(\"p.slow\").show(\"slow\");
        $(\"p.very-fast\").show(50);
        $(\"p.very-slow\").show(2000);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\" class=\"hide-btn\">Esconde los párrafos</button> 
    <button type=\"button\" class=\"show-btn\">Muestra los párrafos</button>
    <p class=\"very-fast\">Este párrafo se mostrará/ocultará muy rápido.</p>
    <p class=\"normal\">Este párrafo se mostrará/ocultará con velocidad por defecto.</p>
    <p class=\"fast\">Este párrafo se mostrará/ocultará de forma rápida.</p>
    <p class=\"slow\">Este párrafo se mostrará/ocultará de forma lenta.</p>
    <p class=\"very-slow\">Este párrafo se mostrará/ocultará de forma muy lenta.</p>
</body>
</html>")


)
(demo-it-start)


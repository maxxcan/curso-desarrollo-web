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
                (demo-it-load-file "../../html/jquery/eventosFormularioFocus.html")
                (demo-it-insert "<!DOCTYPE html>
<html lang=\"en\">
<head>
<meta charset=\"utf-8\">
<title>Ejecutando una función cuando un evento tiene foco</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<style type=\"text/css\">
    label{
        display: block;
        margin: 5px 0;
    }
    label span{
        display: none;
    }
</style>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"input\").focus(function(){
        $(this).next(\"span\").show().fadeOut(\"slow\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <form>
        <label>Email: <input type=\"text\"> <span>Fíjate que no te vea nadie</span></label>
        <label>Contraseña: <input type=\"password\"> <span>Cuida tus espaldas</span></label>
        <label><input type=\"submit\" value=\"Entrar\"> <span>Accede ahora</span></label>
    </form>
    <p><strong>Aviso:</strong> Con el ratón o con la tecla \"TAB\" tendrás foco.</p>
</body>
</html>")

                )
(demo-it-start)


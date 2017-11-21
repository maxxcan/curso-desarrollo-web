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
                (demo-it-load-file "../../html/jquery/eventosFormulario.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Ejecutando una función cuando cambia un evento</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>")
                (demo-it-insert "
<script type=\"text/javascript\">
$(document).ready(function(){
    $(\"select\").change(function(){
        var selectedOption = $(this).find(\":selected\").val();
        alert(\"Te vas de vacaciones a - \" + selectedOption);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
<h2>¿A qué ciudad vas a ir estas vaciones?</h2>
    <form>
        <label>Ciudad:</label>
        <select>
            <option>Roma</option>
            <option>Paris</option>
            <option>New York</option>
        </select>
    </form>
	<p><strong>Aviso:</strong> Selecciona un valor del menú desplegable.</p>
</body>
</html>")
)
(demo-it-start)


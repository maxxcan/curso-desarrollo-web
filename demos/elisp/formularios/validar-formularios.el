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
                :insert-low :show-block-headers
                (demo-it-load-file "../../html/formularios/validarFormularios.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<script>
function validateForm() {
    var x = document.forms[\"myForm\"][\"fnombre\"].value;
    if (x == \"\") {
        alert(\"El campo nombre debe ser rellenado\");
        return false;
    }
}
</script>")
                (demo-it-insert "
</head>
<body>

<form name=\"myForm\" action=\"/action_page_post.php\"
onsubmit=\"return validateForm()\" method=\"post\">
Nombre: <input type=\"text\" name=\"fnombre\">
<input type=\"submit\" value=\"Enviar\">
</form>

</body>
</html>")
                )
(demo-it-start)

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
    (kill-buffer "introduccion-dom.html")))

(defun titulo()
  "Muestra el título de la presentación"
  (demo-it-title-screen "titulo.org" 3))

(defun final()
  "Muestra el título de la presentación"
  (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (titulo)
                (demo-it-load-file "../../html/dom/eventoOnmouseover.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<body>
<head><meta charset=\"utf-8\"></head>

<div onmouseover=\"mOver(this)\" onmouseout=\"mOut(this)\" 
style=\"background-color:#D94A38;width:120px;height:20px;padding:40px;\">
Tócame</div>")
                (demo-it-insert "
<script>
function mOver(obj) {
    obj.innerHTML = \"Tócame\";
}

function mOut(obj) {
    obj.innerHTML = \"Gracias, sigue tocando @-@\";
}
</script>

</body>
</html>")
                )
(demo-it-start)

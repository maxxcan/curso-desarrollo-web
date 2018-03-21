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
                (demo-it-load-file "../../html/dom/eventoMouseClick.html")
                (demo-it-insert "<!DOCTYPE html>
<!DOCTYPE html>
<html>
<body>
<h3>Vamos a ver los  eventos onmousedown, onmouseseup y onclick que son todos parte de mouse-click</h3>

<div onmousedown=\"mDown(this)\" onmouseup=\"mUp(this)\"
style=\"background-color:#D94A38;width:90px;height:20px;padding:40px;\">
Púlsame</div>")
                (demo-it-insert "
<script>
function mDown(obj) {
    obj.style.backgroundColor = \"#1ec5e5\";
    obj.innerHTML = \"Pulsado\";
}

function mUp(obj) {
    obj.style.backgroundColor=\"#D94A38\";
    obj.innerHTML=\"Gracias\";
}
</script>

</body>
</html>")
                )
(demo-it-insert)

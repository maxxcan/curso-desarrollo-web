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
                (demo-it-load-file "../../html/dom/usandoEventos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<body>
<h3>veremos un ejemplo de como cambiar un elemento al pulsar un botón</h3>")
                (demo-it-insert "
<button type=\"button\"
onclick=\"document.getElementById('id1').style.color = 'red'\">
Pulsame!</button>

</body>
</html>")
                )
(demo-it-start)

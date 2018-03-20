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
                (demo-it-load-file "../../html/dom/cambiandoCss.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<body>

<p id=\"p1\">Hola Mundo!</p>
<p id=\"p2\">Hola Mundo!</p>")
                (demo-it-insert "
<script>
document.getElementById(\"p2\").style.color = \"blue\";
document.getElementById(\"p2\").style.fontFamily = \"Arial\";
document.getElementById(\"p2\").style.fontSize = \"larger\";
</script>



</body>
</html>")
                )
(demo-it-start)

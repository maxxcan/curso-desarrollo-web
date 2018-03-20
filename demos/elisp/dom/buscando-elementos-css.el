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
                (demo-it-load-file "../../html/dom/buscandoElementosCss.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<body>

<p>Hola Mundo</p>

<p class=\"intro\">El DOM es muy útil.</p>
<p class=\"intro\">Este ejemplo demuestra el método <b>querySelectorAll</b>.</p>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
var x = document.querySelectorAll(\"p.intro\");
document.getElementById(\"demo\").innerHTML = 
'El primer párrafo (index 0) con clase=\"intro\": ' + x[0].innerHTML;
</script>

</body>
</html>")
                )
(demo-it-start)

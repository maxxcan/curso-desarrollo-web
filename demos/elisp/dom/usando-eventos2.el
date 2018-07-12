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
                (demo-it-load-file "../../html/dom/usandoEventos2.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head><meta charset=\"utf-8\"></head>
<body>

<h3>Otro ejemplo sería como podemos alterar la visibilidad de un elemento HTML</h3>
<p id=\"p1\"> Hola soy un texto molón que aparece y desaparece  </p>")
                (demo-it-insert "
<input type=\"button\" value=\"Esconder texto\"
 onclick=\"document.getElementById('p1').style.visibility='hidden'\">
<input type=\"button\" value=\"Mostrar texto\"
 onclick=\"document.getElementById('p1').style.visibility='visible'\">

</body>
</html>")
                )
(demo-it-start)

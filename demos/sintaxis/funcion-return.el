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
                (demo-it-load-file "funcionReturn.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<title>La función Return</title>
<meta charset=\"UTF-8\">
<body>

<h2>Funciones en JavaScript</h2>

<p>Ejemplo de una llamada a una función y la devolución del valor</p>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
function myFunction(a, b) {
    return a * b;
}
")
                (demo-it-insert "
document.getElementById(\"demo\").innerHTML = myFunction(4, 3);
</script>

</body>
</html>")
                )

(demo-it-start)

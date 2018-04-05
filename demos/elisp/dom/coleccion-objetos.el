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
                (demo-it-load-file "../../html/dom/coleccionObjetos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<body>

<h2>Colecciones de objetos</h2>
<h3>Cuando usamos el método getElementById éste devuelve una colección de objetos HTML Una colección de objetos es como un
Array. Así que para luego acceder a ellos usamos la misma forma que con la que accedemos a los elementos de los Arrays.</h3>

<p>Hola Mundo!</p>

<p>Adios Mundo cruel!</p>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
var myCollection = document.getElementsByTagName(\"p\");
document.getElementById(\"demo\").innerHTML =
\"El segundo objeto de la colección es: \" +
myCollection[1].innerHTML;
</script>

</body>
</html>")
                )
(demo-it-start)

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
                (demo-it-load-file "../../html/objetos/introduccionObjetos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head><title>Introducción a los objetos</title>
<meta charset=\"UTF-8\">
</head>
<body>

<p>Creando un método de objeto</p>

<p>Un método es una definición de función, guardada como un valor de una propiedad.</p>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
var persona = {
    nombre: \"Paquito\",
    apellido: \"Chocolatero\",
    id: 8899,
    nombreCompleto: function(){
         return this.nombre + \" \" + this.apellido;
    }
};
")
                (demo-it-insert "
document.getElementById(\"demo\").innerHTML = persona.nombreCompleto();
</script>
</body>
</html>")
                )

(demo-it-start)

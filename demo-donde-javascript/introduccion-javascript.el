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
                (titulo)
                (demo-it-load-file "holaMundo.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
   <head>
       <script>
         function holamundo(){
             alert(\"Hola, Mundo!\");
         }
         holamundo();
       </script>
   </head>")
               (demo-it-insert "
   <body>
       <h1>Bienvenido al curso de JavaScript de la EOI</h1>
   </body>
</html>")
               )



(demo-it-start)




(require 'demo-it)
(require 'org-tree-slide)

(setq my-demo/ejemplos-dir (expand-file-name "ejemplos"))


;; funciones para esta presentación

(defun my-demo-step/show-code ()
  "funciones que muestran algo de código y avanza
la presentación al mismo tiempo"
  ;;(demo-it-load-side-window "ejemplos/ejemplo.py")
  (demo-it-presentation-advance))


;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "objetos.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"utf-8\">
        <title>Objetos en JavaScript</title>
    </head>
    <body>
        <script type=\"text/javascript\" src=\"objetos.js\"></script>
    </body>
</html>")
                )
(demo-it-start)

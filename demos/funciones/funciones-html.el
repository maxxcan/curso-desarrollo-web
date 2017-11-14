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
                :single-window
                :insert-fast :show-block-headers
                (demo-it-load-file "funciones.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"utf-8\">
        <title>Funciones en JavaScript</title>
    </head>
    <body>
        <script type=\"text/javascript\" src=\"funciones.js\"></script>
    </body>
</html>")
                )
(demo-it-start)

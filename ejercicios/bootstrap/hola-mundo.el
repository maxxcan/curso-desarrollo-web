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
                (demo-it-load-file "../../demos/html/bootstrap/holaMundo.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<title>Plantilla básica con Bootstrap</title>
<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">")
                (demo-it-insert "
<!-- Optional Bootstrap theme -->
<link rel=\"stylesheet\" href=\"css/bootstrap-theme.min.css\">
</head>
<body>
    <h1>Hola, Mundo!</h1>
    <script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
    <script src=\"/examples/js/bootstrap.min.js\"></script>
</body>
</html>
")
                )
(demo-it-start)


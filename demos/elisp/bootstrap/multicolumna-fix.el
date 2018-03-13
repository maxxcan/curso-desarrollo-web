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
                (demo-it-load-file "../../html/bootstrap/multicolumnaFix.html")
                (demo-it-insert "<!DOCTYPE html>
<html lang=\"es\">
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<title>Example of Bootstrap 3 Grid System</title>
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>")
                (demo-it-insert "
<style type=\"text/css\">
    p{
        padding: 50px;
        font-size: 32px;
        font-weight: bold;
        text-align: center;
        background: #dbdfe5;
    }
</style>
</head>")
                (demo-it-insert "
<body>
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-md-4\"><p>Box 1</p></div>
            <div class=\"col-md-4\"><p>Box 2</p></div>
            <div class=\"col-md-4\"><p>Box 3</p></div>
            <div class=\"clearfix visible-md-block\"></div>
            <div class=\"col-md-4\"><p>Box 4</p></div>
            <div class=\"col-md-4\"><p>Box 5</p></div>
            <div class=\"col-md-4\"><p>Box 6</p></div>
            <div class=\"clearfix visible-md-block\"></div>
            <div class=\"col-md-4\"><p>Box 7</p></div>
            <div class=\"col-md-4\"><p>Box 8</p></div>
            <div class=\"col-md-4\"><p>Box 9</p></div>
            <div class=\"clearfix visible-md-block\"></div>
            <div class=\"col-md-4\"><p>Box 10</p></div>
            <div class=\"col-md-4\"><p>Box 11</p></div>
            <div class=\"col-md-4\"><p>Box 12</p></div>
        </div>
    </div>
</body>
</html>")
                )
(demo-it-start)

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
                (demo-it-load-file "../../demos/html/bootstrap/2Columnas.html")
                (demo-it-insert "<!DOCTYPE html>
<html lang=\"es\">
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<title>Ejemplo de diseño de 2 columnas para dispositivos pequeños y medianos</title>")
                (demo-it-insert "
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>")
                (demo-it-insert "
<style type=\"text/css\">
    /* Some custom styles to beautify this example */
    .demo-content{
        padding: 15px;
        font-size: 18px;
        min-height: 300px;
        background: #dbdfe5;
        margin-bottom: 10px;
    }
    .demo-content.bg-alt{
        background: #abb1b8;
    }
</style>")
                (demo-it-insert "
</head>
<body>
    <div class=\"container\">
        <!-- Fila con dos columnas -->
        <div class=\"row\">
            <div class=\"col-sm-6\">
                <div class=\"demo-content\">.col-sm-6</div>
            </div>
            <div class=\"col-sm-6\">
                <div class=\"demo-content bg-alt\">.col-sm-6</div>
            </div>
        </div>
        <hr>")
                (demo-it-insert "
        <!--Filas en dos columnas divididas en 1:2-->
        <div class=\"row\">
            <div class=\"col-sm-4\">
                <div class=\"demo-content\">.col-sm-4</div>
            </div>
            <div class=\"col-sm-8\">
                <div class=\"demo-content bg-alt\">.col-sm-8</div>
            </div>
        </div>
        <hr>")
                (demo-it-insert "
        <!--Filas en dos columnas divididas en 1:3-->
        <div class=\"row\">
            <div class=\"col-sm-3\">
                <div class=\"demo-content\">.col-sm-3</div>
            </div>
            <div class=\"col-sm-9\">
                <div class=\"demo-content bg-alt\">.col-sm-9</div>
            </div>
        </div>
    </div>
</body>
</html>")
                )
(demo-it-start)


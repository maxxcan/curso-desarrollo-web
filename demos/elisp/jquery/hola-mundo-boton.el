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
                (demo-it-load-file "../../html/jquery/holaMundoBoton.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"utf-8\">
    <title>Demo con JQuery</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"/examples/css/style.css\">
    <script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
    <script type=\"text/javascript\">
        $(document).ready(function(){
            $(\"button\").click(function(){
                $(\"p\").text(\"Hola Mundo!\");
            });
        });
    </script>
</head>")
                (demo-it-insert "
<body>
    <p>No saludo al mundo.</p>
    <button type=\"button\">Botón que reemplaza</button>
</body>
</html>")
                )
(demo-it-start)


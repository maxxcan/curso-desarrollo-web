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
                (demo-it-load-file "../../html/bootstrap/clasesResponsivas.html")
                (demo-it-insert "!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<title>Ejemplo de clases responsivas</title>
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>")
                (demo-it-insert "
<style type=\"text/css\">
    p{
        padding: 20px;
        background: #FFF0F5;
        border-radius: 5px;
    }
    .bs-example{
    	margin: 20px;
    }
</style>
</head>")
                (demo-it-insert "
<body>
<div class=\"bs-example\">
    <p class=\"visible-xs\">Este párrafo solo se verá en <strong>Dispositivos muy pequeños</strong> that has screen width less than <code>768px</code>.</p>
    <p class=\"visible-sm\">Este párrafo solo se verá en <strong>Pequeños dispositivos</strong> that has screen width greater than equal to <code>768px</code> but less than <code>992px</code>.</p>
    <p class=\"visible-md\">Este párrafo solo se verá en <strong>Dispositivos medianos</strong> that has screen width greater than or equal to <code>992px</code> but less than <code>1200px</code>.</p>
    <p class=\"visible-lg\">Este párrafo solo se verá en <strong>Dispositivos grandes</strong> that has screen width greater than or equal to <code>1200px</code>.</p>
</div>
</body>
</html>")
                )
(demo-it-start)

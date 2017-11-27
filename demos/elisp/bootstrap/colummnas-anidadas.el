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
                (demo-it-load-file "../../html/bootstrap/columnasAnidadas.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
<title>Ejemplo de columnas anidadas</title>
<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>
<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>")
                (demo-it-insert "
<style type=\"text/css\">
	
    .main-content{
		min-height: 330px;
        background: #dbdfe5;
    }
    .sidebar-content{
        min-height: 150px;
        margin-bottom: 30px;
        background: #b4bac0;
    }
</style>
</head>")
                (demo-it-insert "
<body>

	<div class=\"container\">
        <div class=\"row\">
            <div class=\"col-xs-8\">
                <div class=\"main-content\"></div>
            </div>
            <div class=\"col-xs-4\">
                <!--Nested rows within a column-->
                <div class=\"row\">
                    <div class=\"col-xs-12\">
                        <div class=\"sidebar-content\"></div>
                    </div>
                </div>
				<div class=\"row\">
                    <div class=\"col-xs-12\">
                        <div class=\"sidebar-content\"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>")
                )
(demo-it-start)

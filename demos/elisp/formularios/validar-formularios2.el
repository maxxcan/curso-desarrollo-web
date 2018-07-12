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
                :insert-low :show-block-headers
                (demo-it-load-file "../../html/formularios/validarFormularios2.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
</head>
<body>

<h2>Validación en HTML con JavaScript</h2>

<p>Introduce un número entre 1 y 10:</p>

<input id=\"numb\">

<button type=\"button\" onclick=\"myFunction()\">Enviar</button>

<p id=\"demo\"></p>")
                (demo-it-insert "
<script>
function myFunction() {
    var x, text;

    
    x = document.getElementById(\"numb\").value;

    
    if (isNaN(x) || x < 1 || x > 10) {
        text = \"No es una entrada válida\";
    } else {
        text = \"Te doy el apruvement\";
    }
    document.getElementById(\"demo\").innerHTML = text;
}
</script>

</body>
</html>")
                )
(demo-it-start)

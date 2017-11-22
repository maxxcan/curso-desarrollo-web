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
                (demo-it-load-file "../../html/jquery/metodoRemove.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Eliminando elementos desde el DOM</title>
<style type=\"text/css\">
.container{
    padding: 10px;
    background: #f0e68C;
    border: 1px solid #bead18;
}
</style>")
                (demo-it-insert "
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">
$(document).ready(function(){
    // Borra el párrafo con la clase hint
    $(\"button\").click(function(){
       $(\"p.hint\").remove();
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <div class=\"container\">
        <h1>Saluditos vecinitos!</h1>
        <p class=\"hint\"><strong>Aviso:</strong> Si pulsas este botón borrarás el párrafo.</p>
        <button type=\"button\">Borra el párrafo</button>
    </div>
</body>
</html>")

                )
(demo-it-start)


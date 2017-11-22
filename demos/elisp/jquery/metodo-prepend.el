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
                (demo-it-load-file "../../html/jquery/metodoAppend.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Insertando contenido HTML al principio de los elementos seleccionados</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    // Prepend all paragraphs on document ready
    $(\"p\").prepend(\"<strong>AVISO:</strong> \");
    
    // Prepend a div container on button click
    $(\"button\").click(function(){
       $(\"#container\").prepend(\"Esto es un texto de prueba.\");
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <button type=\"button\">Inserta Texto</button>
    <div id=\"container\">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem
 tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis
 vel, semper malesuada ante.</p>
        <p>Quis quam ut magna consequat faucibus. Pellentesque eget nisi a mi
 suscipit tincidunt. Ut tempus dictum risus. Pellentesque viverra sagittis quam
 at mattis. Suspendisse potenti.</p>
    </div>
</body>
</html>")
                )
(demo-it-start)


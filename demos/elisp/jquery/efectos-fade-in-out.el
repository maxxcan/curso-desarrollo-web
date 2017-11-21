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
                (demo-it-load-file "../../html/jquery/efectosFadeInOut.html")
                (demo-it-insert " <!DOCTYPE html>
 <html>
 <head>
 <meta charset=\"UTF-8\">
 <title>Ejemplos del efecto Fade-In y Fade-Out</title>
 <script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
 <style type=\"text/css\">
     p{
         padding: 15px;
         background: #DDA0DD;
     }
 </style>")
                (demo-it-insert "
<script type=\"text/javascript\">
 $(document).ready(function(){
     // Mostrando el párrafo
     $(\".out-btn\").click(function(){
         $(\"p\").fadeOut();
     });")
                (demo-it-insert "
 // Ocultando el párrafo
     $(\".in-btn\").click(function(){
         $(\"p\").fadeIn();
     });
 });
 </script>
 </head>")
                (demo-it-insert "
<body>
     <button type=\"button\" class=\"out-btn\">largando párrafo</button>
     <button type=\"button\" class=\"in-btn\">trayendo párrafo</button>
     <p>Esto amigos es una cosa rosa.</p>
     <p>Yo soy otra cosa rosa.</p>
 </body>
 </html>")


)
(demo-it-start)


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



;; Funciones para esta present

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "../html/ejemplo.html")
                (demo-it-insert "<!DOCTYPE html>
<html lang=\"es\">
<head>

  <title>Página personal</title>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">

</head>
<body>

<h3>Who Am I?</h3>
<img src=\"img/ironman.jpg\" alt=\"Ironman\">
<h3>I'm Ironman </h3>

</body>
</html>")
                (goto-line 8)
                (demo-it-insert "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>
  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>")
                (goto-line 4)
                (demo-it-insert " <style>
  .bg-1 {
       background-color: #1abc9c; /* Green */
        color: #ffffff;
    }

  </style>

")
                (goto-line 23)
                (goto-char 628)
                (demo-it-insert "class=\"img-circle\" ")
                (goto-line 9)
                (demo-it-insert " .bg-2 {
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 {
      background-color: #ffffff; /* White */
      color: #555555;
  }
")
                (goto-line 33)
                (demo-it-insert "<div class=\"container-fluid bg-2 text-center\">
  <h3>What Am I?</h3>
  <p>Lorem ipsum..</p>

</div>

<div class=\"container-fluid bg-3 text-center\">
  <h3>Where To Find Me?</h3>
  <p>Lorem ipsum..</p>
</div>

")
                (goto-line 17)
                (demo-it-insert "/* mejorando el padding*/
.container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
}")
                (goto-line 40)
                (demo-it-insert "<a href=\"#\" class=\"btn btn-default btn-lg\">
  <span class=\"glyphicon glyphicon-search\"></span> Search
</a>")
                (goto-line 47)
                (kill-line)
                (demo-it-insert "<div class=\"row\">
    <div class=\"col-sm-4\">
      <p>Lorem ipsum..</p>
      <img src=\"img/ironman-image1.jpg\" alt=\"Image\">
    </div>
    <div class=\"col-sm-4\">
      <p>Lorem ipsum..</p>
      <img src=\"img/ironman-image2.jpg\" alt=\"Image\">
    </div>
    <div class=\"col-sm-4\">
      <p>Lorem ipsum..</p>
      <img src=\"img/ironman-image3.jpg\" alt=\"Image\">
    </div>
  </div>")
                (goto-char 1339)
                (demo-it-insert "class=\"img-responsive\" style=\"width:100%\" ")
                (goto-char 1499)
                (demo-it-insert "class=\"img-responsive\" style=\"width:100%\" ")
                (goto-char 1659)
                (demo-it-insert "class=\"img-responsive\" style=\"width:100%\" ")
                (goto-line 33)
                (demo-it-insert "<!-- Añadiendo barra de navegación -->
<nav class=\"navbar navbar-default\">
  <div class=\"container\">
    <div class=\"navbar-header\">
      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">
        <span class=\"icon-bar\"></span>
        <span class=\"icon-bar\"></span>
        <span class=\"icon-bar\"></span>
      </button>
      <a class=\"navbar-brand\" href=\"#\">Me</a>
    </div>
    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">
      <ul class=\"nav navbar-nav navbar-right\">
        <li><a href=\"#\">WHO</a></li>
        <li><a href=\"#\">WHAT</a></li>
        <li><a href=\"#\">WHERE</a></li>
      </ul>
    </div>
  </div>
</nav>

")
                (goto-line 22)
                (kill-line)
                (demo-it-insert ".navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
}

.navbar-nav li a:hover {
    color: #1abc9c !important;
}

</style>

")
                (goto-line 35)
                (demo-it-insert "/* añadiendo estilo para el footer */
.bg-4 {
    background-color: #2f2f2f;
    color: #ffffff;
}")
                (goto-line 104)
                (demo-it-insert "<footer class=\"container-fluid bg-4 text-center\">
  <p>Bootstrap Theme Made By <b>Maxxcan</b></p>
</footer>")
                )
(demo-it-start)

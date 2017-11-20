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
                (demo-it-load-file "selectoresPropios.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"utf-8\">
<title>Selectores propios de JQuery</title>
<style type=\"text/css\">
    /* Añadiendo estilo */
    *{
        padding: 5px;
    }
</style>
<script src=\"https://code.jquery.com/jquery-3.2.1.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    // Selecciona las filas pares
    $(\"tr:odd\").css(\"background\", \"yellow\");")
                (demo-it-insert "
    // Selecciona las filas impares
    $(\"tr:even\").css(\"background\", \"orange\");")
                (demo-it-insert "
    // Selecciona el primer párrafo de un elemento
    $(\"p:first\").css(\"background\", \"red\");")
                (demo-it-insert "
    // Selecciona el último párrafo de un elemento
    $(\"p:last\").css(\"background\", \"green\");")
                (demo-it-insert "
    // Selecciona todo lo tipo text dentro de un formulario
    $(\"form :text\").css(\"background\", \"purple\");")
                (demo-it-insert "
    // Selecciona todo lo tipo password de un formulario
    $(\"form :password\").css(\"background\", \"blue\");")
                (demo-it-insert "
    // Selecciona todo los input de un formulario
    $(\"form :submit\").css(\"background\", \"violet\");
});
</script>
</head>")
                (demo-it-insert "
<body>
    <table border=\"1\">
        <thead>
            <tr>
                <th>No.</th>
                <th>Nombre</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>")
                (demo-it-insert "
<tr>
                <td>1</td>
                <td>Paquito Chocolatero</td>
                <td>paco_elsobrao@mail.com</td>
            </tr>")
                (demo-it-insert "
 <tr>
                <td>2</td>
                <td>Juan Pérez</td>
                <td>juansinmiedo@mail.com</td>
            </tr>")
                (demo-it-insert "
 <tr>
                <td>3</td>
                <td>John Rambo</td>
                <td>johnrambo@mail.com</td>
            </tr>
        </tbody>
    </table>")
                (demo-it-insert "
 <p>Esto es un párrafo.</p>
    <p>Esto es otro.</p>
    <p>Que cansinos que sois.</p>
    <form>
        <label>Nombre: <input type=\"text\"></label>
        <label>Contraseña: <input type=\"password\"></label>
        <input type=\"submit\" value=\"Sign In\">
    </form>
</body>
</html>")

                )
(demo-it-start)


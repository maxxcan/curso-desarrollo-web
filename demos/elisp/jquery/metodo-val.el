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
                (demo-it-load-file "../../html/jquery/metodoVal.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
<head>
<meta charset=\"UTF-8\">
<title>Obteniendo los valores de un formulario</title>
<script src=\"https://code.jquery.com/jquery-1.12.4.min.js\"></script>
<script type=\"text/javascript\">")
                (demo-it-insert "
$(document).ready(function(){
    $(\"button.get-name\").click(function(){
        var name = $(\"#name\").val();
        alert(name);
    });
    $(\"button.get-comment\").click(function(){
        var comment = $(\"#comment\").val();
        alert(comment);
    });
    $(\"button.get-city\").click(function(){
        var city = $(\"#city\").val();
        alert(city);
    });
});
</script>
</head>")
                (demo-it-insert "
<body>
    <form>
        <table>
            <tr>
                <td>Nombre:</td>
                <td>
                    <input type=\"text\" id=\"name\">
                </td>
            </tr>
            <tr>")
                (demo-it-insert "
<td>Comentarios:</td>
                <td>
                    <textarea rows=\"4\" cols=\"30\" id=\"comment\"></textarea>
                </td>
            </tr>
            <tr>
                <td>Ciudad:</td>
                <td>")
                (demo-it-insert "
 <select id=\"city\">
                        <option>London</option>
                        <option>Paris</option>
                        <option>New York</option>
                    </select>
                </td>
            </tr>
        </table>
    </form>")
                (demo-it-insert "
  <p><strong>AVISO:</strong> Rellena los siguientes campos.</p>
    <button type=\"button\" class=\"get-name\">Obtén nombre</button>
    <button type=\"button\" class=\"get-comment\">Obtén comentario</button>
    <button type=\"button\" class=\"get-city\">Obtén ciudad</button>
</body>
</html>")

                )
(demo-it-start)


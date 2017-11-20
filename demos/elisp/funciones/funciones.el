(require 'demo-it)
(require 'org-tree-slide)

(setq my-demo/ejemplos-dir (expand-file-name "ejemplos"))


;; funciones para esta presentación

(defun my-demo-step/show-code ()
  "funciones que muestran algo de código y avanza
la presentación al mismo tiempo"
  ;;(demo-it-load-side-window "ejemplos/ejemplo.py")
  (demo-it-presentation-advance))


;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "funciones.js")
                (demo-it-insert "// Una función es un bloque de código que se ejecuta una tarea en particular.
// Así podemos reutilizar el código.
// Además hay que invocarla para que se ejecute
// Una función se puede invocar desde el código, con un evento o automáticamente.

// Sintaxis de una función
// function nombre_funcion (<parámetros separados por comas>) {...}")
                (demo-it-insert "
function saludo (){
    alert(\"Hola!\");
}")
                (demo-it-insert "
//los paréntesis invocan a la función
var resultado_saludo = saludo();
alert (resultado_saludo);")

                (demo-it-insert"
// Sin paréntesis se puede guardar la función en una variable
var resultado_saludo2 = saludo;
alert(resultado_saludo2);")


                (demo-it-insert "
//Función con parámetros

function producto (a, b){
    return a * b;
}

var resultado_producto = producto (3, 4);
alert (resultado_producto);")
                )
(demo-it-start)



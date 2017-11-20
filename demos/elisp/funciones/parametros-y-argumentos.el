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
                (demo-it-load-file "parametros-y-argumentos.js")
                (demo-it-insert "
/* Parámetros y argumentos
   Función puede tener 0 o más parámetros.
   Parámetros son los nombres que aparecen en la definición de una función
   Argumentos son los valores que pasamos y recibe una función*/")

                (demo-it-insert "

/* Reglas de los parámetros:
   -No se especifica su tipo
   -No se verifican los tipos de los argumentos
   -No se comprueba el número de los argumentos recibidos.*/")

                (demo-it-insert "

//Parámetros por defecto
//Cuando llamamos a una función con menos argumentos de los declarados.")

                (demo-it-insert "

function suma (a,b){
    if (b === undefined)
        b = 0;
    return a + b;
}

var resultado = suma(4);
alert(resultado);")

                (demo-it-insert "
//Parámetros por exceso
//Cuando llamamos a una función con más parámetros.")

               (demo-it-insert "

function valores (){
")

               (demo-it-insert "
  alert (\"El número de argumentos es \"+arguments.length);
    for (var i=0; i < arguments.length; i++){
        alert (\"Argumento \"+i+\"=\"+arguments[i]);
    }
}")

               (demo-it-insert "
valores (4, 5, 6, 6, 6, 3, 5);")

               )
(demo-it-start)

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
                (demo-it-load-file "../../html/objetos/js/objetos2.js")
                (demo-it-insert "
// 3 formas de crear un objeto en JavaScript
//
//")
                (demo-it-insert "
// 1. Definir y crear un objeto simple usando un literal
var persona1 = {nombre:\"Ada\", apellido:\"Lovelace\", edad:19};")

                (demo-it-insert "
// 2. Definir y crear un objeto simple utilzando la palabra new.

var persona2 = new Object();
persona2.nombre = \"Charle\";
persona2.apellido = \"Babbage\";
persona2.edad = \"21\";
")
                (demo-it-insert "

// 3. Definir un constructor de un objeto y crear objetos del tipo construido
function Persona (nom, ape, edad){
    this.nombre = nom;
    this.apellido = ape;
    this.edad = edad;
}")
                (demo-it-insert "

var ada = new Persona (\"Ada\", \"Lovelace\", 18);
var charle = new Persona (\"Charle\", \"Babbage\", 21);
")

                (demo-it-insert "

/* this (palabra reservada):
   - Hace referencia al propietario de la función que está invocándose
   - Hace referencia al objeto donde la función es un método.*/
")
                )
(demo-it-start)

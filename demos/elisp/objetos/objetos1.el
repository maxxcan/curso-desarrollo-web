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
                (demo-it-load-file "../../html/objetos/js/objetos1.js")
                (demo-it-insert "
//DATOS PRIMITIVOS:
var cadena = \"Ada Lovelace\";
var pi = 3.14;
var bool = true; //false
var nodefinida = undefined;
var nula = null;")

                (demo-it-insert "
//OBJETOS NATIVOS: no dependen del navegador.
/* -String
   -Number
   -Boolean
   -Data
   -Math
   -RegExp (Expresiones regulares)
   -Array
   -Function
   -Object */")
                (demo-it-insert "
//OBJETOS DE ALTO NIVEL: dependen del navegador
/* -Windows
   -Screen
   -Navigation
   -Location
   -History
   -Document */")

                (demo-it-insert "
//DEFINICIÓN DE UN OBJETO:

var programadora = {nombre: \"Ada\", apellido: \"lovelace\", edad:18};

/* -Propiedades: se definen en modo nombre: valor.
   -Método: acciones sobre un objeto */")
                )
(demo-it-start)



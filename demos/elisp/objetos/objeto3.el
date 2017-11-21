(require 'demo-it)
(require 'org-tree-slide)

;;(setq my-demo/ejemplos-dir (expand-file-name "ejemplos"))


;; funciones para esta presentación

(defun my-demo-step/show-code ()
  "funciones que muestran algo de código y avanza
la presentación al mismo tiempo"
  ;;(demo-it-load-side-window "ejemplos/ejemplo.py")
  (demo-it-presentation-advance))


;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers
                (demo-it-load-file "../../html/objetos/js/objetos3.js")
                (demo-it-insert "
/*Sintaxis de acceso a las propiedades de un objeto:

  -objeto.propiedad:
  -objeto[\"propiedad\"]
  -objeto[expresion]*/

")
                (demo-it-insert "

var persona1 = {nombre:\"Ada\",apellido:\"Lovelace\",edad:18};
alert (persona1.nombre);
alert (persona1[\"apellido\"]);
var expresion = \"edad\";
alert (persona1[expresion]);
")
                (demo-it-insert "
/*recorrer las propiedades de un objeto:
  for (<nombre_variable> in <nombre_objeto>){
  <nombre_objeto>[<nombre_variable>]
  } */

for (x in persona1){
    alert(persona1[x]);
}

")
                (demo-it-insert "
/* Añadir una nueva propiedad a un objeto:
   <nombre_objeto>,<nueva_propiedad> = <valor_propiedad> */

persona1.nacionalidad = \"Inglesa\";
alert(persona1.nacionalidad);
")
                (demo-it-insert "
/*Borrar la propiedad
  Delete <nombre_objeto>.<nombre_propiedad>*/
delete persona1.edad;
")
                )
(demo-it-start)

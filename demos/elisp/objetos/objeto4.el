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
                (demo-it-load-file "../../html/objetos/js/objetos4.js")
                (demo-it-insert "
/*Sintaxis de creación de métodos de objeto:
  <nombre_método>: function(){
 instrucciones necesarias 
}
")
                (demo-it-insert "
Sintaxis de acceso a un método
<nombre_objeto>.<nombre_método>();
*/
")
                (demo-it-insert "
var persona1 = {nombre: \"Ada\",
                apellido:\"lovelace\",
                nombreCompleto: function(){
                    return this.nombre + \" \" + this.apellido;
                }
               };
")
                (demo-it-insert "
alert (persona1.nombre);
alert (persona1.apellido);
alert (persona1.nombreCompleto());
")
                )
(demo-it-start)

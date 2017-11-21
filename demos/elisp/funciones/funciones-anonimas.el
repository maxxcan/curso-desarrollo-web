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
    (kill-buffer "funciones.html")))

;; (defun titulo()
;;   "Muestra el título de la presentación"
;;   (demo-it-title-screen "titulo.org" 3))

;; (defun final()
;;   "Muestra el título de la presentación"
;;   (demo-it-title-screen "fin.org" 3))



;; Funciones para esta presentación

(demo-it-create :advance-mode
                :insert-fast :show-block-headers

                (demo-it-load-file "../../html/funciones/js/funcionesAnonimas.js")

                (demo-it-insert "
// Sintaxis de una función anónima

var producto = function (a, b){ return a * b;};
var resultado = producto(3,6);
alert (resultado);")


                (demo-it-insert "
//El constructor function()
var miFuncion = new Function (\"a\", \"b\", \"return a*b;\");
var resultado2 = miFuncion(5,7);
alert(resultado2);")
                (demo-it-insert "

//funciones anónimas autoinvocadas
(function () { alert (\"Hola!\");}());

// las funciones anónimas se usan mucho con eventos.")
                )
(demo-it-start)


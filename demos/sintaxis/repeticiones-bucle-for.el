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
                (demo-it-load-file "repeticionesBucleFor.html")
                (demo-it-insert "<!DOCTYPE html>
<html>
	<head>
		<meta charset=\"UTF-8\">
		<title>Repeticiones. Bucle for</title>
	</head>")
                (demo-it-insert "
	<body>
		<script>
			/* SINTAXIS:
				for (<sentencia_1>; <sentencia_2>; <sentencia_3>){
					//Código que se repite
				}
				- SENTENCIA 1: se ejecuta antes del que empiece el bloque de código a repetir.
				- SENTENCIA 2: define la condición por la que el bloque de código se va a ejecutar.
				- SENTENCIA 3: se ejecuta después de que acabe el bloque de código a repetir. */

				var i;
				for (i = 1; i <= 5; i++){
					alert (\"i = \"+i);
				}
")
                (demo-it-insert "
	// VARIACIONES
				//1. Si omitimos la primera sentencia debemos haber inicializado la variable con anterioridad.
				var j = 1;
				for ( ; j <=5; j++){
					alert (\"j = \"+j);
				}
")
                (demo-it-insert "
	//2. Si omitimos la segunda sentencia, dentro del código a repetir debemos incluir una instrucción break.
				var k;
				for (k=1; ;k++){
					alert (\"k = \"+k);
					if (k == 5){
						break;
					}
				}
")
                (demo-it-insert "
	//3. Si omitimos la tercera sentencia, debemos incrementar o decrementar el valor de la variable dentro del bucle.
				var l;
				for (l=1; l<=5; ){
					alert (\"l = \"+l);
					l++;
				}
")
                (demo-it-insert "
	//4. Podemos trabajar con dos o más valores dentro del bucle for
				var m, n;
				for (m=1, n=10; m<=10, n>=1; m++, n--){
					alert (\"m = \"+m+\", n = \"+n);
				}

		</script>
	</body>
</html>
")
                )

(demo-it-start)
